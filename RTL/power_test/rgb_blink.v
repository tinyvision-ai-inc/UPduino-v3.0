//----------------------------------------------------------------------------
//                                                                          --
//                         Module Declaration                               --
//                                                                          --
//----------------------------------------------------------------------------
//`define LFOSC // Select the low frequency 10kHz clock

module rgb_blink
(
    // outputs
    output  wire        led_red,       // Red
    output  wire        led_blue,       // Blue
    output  wire        led_green,        // Green

    output spi_sck,
    output spi_ssn,
    input  spi_miso,
    output spi_mosi,

    input gpio_23,
    input gpio_25,
    input gpio_26,
    input gpio_27,
    input gpio_32,
    input gpio_35,
    input gpio_31,
    input gpio_37,
    input gpio_34,
    input gpio_43,
    input gpio_36,
    input gpio_42,
    input gpio_38,
    input gpio_28,
    input gpio_20,
    input gpio_10,
    input gpio_12,
    input gpio_21,
    input gpio_13,
    input gpio_19,
    input gpio_18,
    input gpio_11,
    input gpio_9,
    input gpio_6,
    input gpio_44,
    input gpio_4,
    input gpio_3,
    input gpio_48,
    input gpio_45,
    input gpio_47,
    input gpio_46,
    input gpio_2

);
    reg         rstn;
    reg         int_osc;
    reg [27:0]  frequency_counter_i;
    wire integer index; // Index into the clock divider

    // Disable the SPI Flash
    assign spi_ssn = 1'b1;
    assign spi_sck = 1'b1; // Already pulled up on the board
    assign spi_mosi = 1'b0;

    wire munged;
    assign munged = |{spi_miso,
    gpio_23, gpio_25, gpio_26, gpio_27, gpio_32, gpio_35, gpio_31, gpio_37,
    gpio_34, gpio_43, gpio_36, gpio_42, gpio_38, gpio_28, gpio_20, gpio_10,
    gpio_12, gpio_21, gpio_13, gpio_19, gpio_18, gpio_11, gpio_9,  gpio_6,
    gpio_44, gpio_4,  gpio_3,  gpio_48, gpio_45, gpio_47, gpio_46, gpio_2
    };

//----------------------------------------------------------------------------
//                                                                          --
//                       Internal Oscillator                                --
//                                                                          --
//----------------------------------------------------------------------------
`ifdef LFOSC
    SB_LFOSC  u_OSC(.CLKLFPU(1), .CLKLFEN(1), .CLKLF(int_osc));
    assign index = 15;
`else
    SB_HFOSC  u_OSC(.CLKHFPU(1), .CLKHFEN(1), .CLKHF(int_osc));
    assign index = 24;
`endif

//----------------------------------------------------------------------------
//                                                                          --
//                       Counter                                            --
//                                                                          --
//----------------------------------------------------------------------------
    always @(posedge int_osc) begin
	    frequency_counter_i <= frequency_counter_i + 1'b1;
    end

//----------------------------------------------------------------------------
//                                                                          --
//                       Instantiate RGB primitive                          --
//                                                                          --
//----------------------------------------------------------------------------
    SB_RGBA_DRV RGB_DRIVER (
      .RGBLEDEN (1'b1),
      .RGB0PWM  (frequency_counter_i[index+1]&frequency_counter_i[index] | munged),
      .RGB1PWM  (frequency_counter_i[index+1]&~frequency_counter_i[index]),
      .RGB2PWM  (~frequency_counter_i[index+1]&frequency_counter_i[index]),
      .CURREN   (1'b1),
      .RGB0     (led_green),		//Actual Hardware connection
      .RGB1     (led_blue),
      .RGB2     (led_red)
    );
    defparam RGB_DRIVER.RGB0_CURRENT = "0b000001";
    defparam RGB_DRIVER.RGB1_CURRENT = "0b000001";
    defparam RGB_DRIVER.RGB2_CURRENT = "0b000001";

endmodule
