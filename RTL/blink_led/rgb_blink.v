//----------------------------------------------------------------------------
//                                                                          --
//                         Module Declaration                               --
//                                                                          --
//----------------------------------------------------------------------------
module rgb_blink
(
    // outputs
    output  wire        led_red,       // Red
    output  wire        led_blue,       // Blue
    output  wire        led_green        // Green
);
    reg         rstn;
    reg [27:0]  frequency_counter_i;

//----------------------------------------------------------------------------
//                                                                          --
//                       Internal Oscillator                                --
//                                                                          --
//----------------------------------------------------------------------------
    SB_HFOSC  u_SB_HFOSC(.CLKHFPU(1), .CLKHFEN(1), .CLKHF(int_osc));


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
      .RGB0PWM  (frequency_counter_i[25]&frequency_counter_i[24]),
      .RGB1PWM  (frequency_counter_i[25]&~frequency_counter_i[24]),
      .RGB2PWM  (~frequency_counter_i[25]&frequency_counter_i[24]),
      .CURREN   (1'b1),
      .RGB0     (led_red),		//Actual Hardware connection
      .RGB1     (led_green),
      .RGB2     (led_blue)
    );
    defparam RGB_DRIVER.RGB0_CURRENT = "0b000001";
    defparam RGB_DRIVER.RGB1_CURRENT = "0b000001";
    defparam RGB_DRIVER.RGB2_CURRENT = "0b000001";

endmodule
