# UPduino-v3.0 and 3.1

<img src="./assets/UPduino_v3.0_front.png" alt="UPduino v3.0 Front" width="400"/>

Image credit: Gregory Benjamin

## UPDuino v3.1: PCB Design Files, Designs, Documentation

The UPDuino v3.1 is a small, low cost FPGA board. The board features an on-board FPGA programmer, flash and LED with _all_ FPGA pins brought out to easy to use 0.1" header pins for fast prototyping.

The tinyVision.ai UPduino v3.x Board Features:

* Lattice UltraPlus ICE40UP5K FPGA with 5.3K LUTs, 1Mb SPRAM, 120Kb DPRAM, 8 Multipliers
* FTDI FT232H USB to SPI Device
* _ALL_ 32 FPGA GPIO on 0.1” headers
* 4MB SPI Flash
* RGB LED
* On board 3.3V and 1.2V Regulators, can supply 3.3V to your project
* Open source schematic and layout using KiCAD design tools
* Integrated into the open source [APIO toolchain](https://github.com/FPGAwars/apio)
* Works with [IceStudio](https://github.com/FPGAwars/icestudio)<sup>[nightly/dev branch only at the moment](https://downloads.icestudio.io/)</sup>


Please see the [wiki page](https://github.com/tinyvision-ai-inc/UPduino-v3.0/wiki) for the changes that were implemented from v2.1. Some salient features are:
* 4 layer board with a solid ground plane, proper layout/decoupling for good signal integrity and FPGA operation
* Access to on-board 12MHz oscillator using a jumper
* _All_ FPGA pins including LED driver pins are brought to 0.1" headers
* qSPI Flash capable
* tinyFPGA bootloader compatible 

Here are some resources for you:
* [Documentation](https://upduino.readthedocs.io/) (beyond what's on this GitHub)
* [Discord channel](https://discord.gg/3qbXujE)
* [Schematic](./Board/v3.0/UPduino_v3.0.pdf)
* [AssemblyDrawing](./Board/v3.0/UPduino_v3.0Assembly.html)
* [Blinking LED](./RTL/blink_led)
 
TinyVision.ai blog posts:
* [Magic Smoke and PTC's](https://blogs.tinyvision.ai/upduino/power/ptc/2021/12/31/magic-smoke-and-PTCs.html)
* [Lattice Modelsim on Windows](https://blogs.tinyvision.ai/modelsim/windows/linux/radiant/lattice/2022/01/01/Using-Lattice-Modelsim-on-Win-Linux.html)
* [Ground trampolines and Phase Locked Loops](https://tinyvision.ai/blogs/processing-at-the-edge/ground-trampolines-and-phase-locked-loops)

You can buy this board here:
US and non-EU orders: <a href="https://www.tindie.com/stores/tinyvision_ai/?ref=offsite_badges&utm_source=sellers_vr2045&utm_medium=badges&utm_campaign=badge_medium"><img src="https://d2ss6ovg47m0r5.cloudfront.net/badges/tindie-mediums.png" alt="I sell on Tindie" width="150" height="78"></a>. 

EU Orders with VAT paid: <a href="https://lectronz.com/stores/tinyvision-ai-store"><img alt="I sell on Lectronz" src="https://lectronz.com/static/badges/i-sell-on-lectronz-medium.png" /></a>

For expedited shipping options, please visit the storefront at www.tinyvision.ai or email us directly at: sales at tinyvision dot ai.

## Useful links
* [Digi-Key Intro to FPGA Video series](https://youtube.com/playlist?list=PLEBQazB0HUyT1WmMONxRZn9NmQ_9CIKhb)
* [osresearch](https://github.com/osresearch/up5k): large collection of very useful code and a good overview.
* [UPduino FPGA tutorial using APIO](https://blog.idorobots.org/entries/upduino-fpga-tutorial.html)
* [A very detailed blog on implementing a RISCV in the FPGA](https://pingu98.wordpress.com/2019/04/08/)
* [Lattice iCECube2 tutorial](https://hsel.co.uk/2018/05/21/lattice-ice40-ultra-plus-fpga-gnarly-grey-upduino-tutorial-1-the-basics/)
* [Open FPGA verilog Tutorial](https://github.com/Obijuan/open-fpga-verilog-tutorial/wiki)

## The next generation of Upduino (coming soon)
* [pico-ice](https://github.com/tinyvision-ai-inc/pico-ice)
