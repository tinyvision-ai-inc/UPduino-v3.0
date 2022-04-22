.. this is a comment, it is not rendered
   when adding new *.rst files, reference them here
   in this index.rst for them to be rendered and added to the
   table of contents


=====================
UPduino Documentation
=====================

tinyVision.ai
*************

UPDuino v3.0: PCB Design Files, Designs, Documentation
------------------------------------------------------

The UPDuino v3.0 is a small, low-cost FPGA board. The board features an on-board FPGA programmer, flash and LED with _all_ FPGA pins brought out to easy to use 0.1" header pins for fast prototyping.

The tinyVision.ai UPduino v3.0 Board Features:

* Lattice UltraPlus ICE40UP5K FPGA with 5.3K LUTs, 1Mb SPRAM, 120Kb DPRAM, 8 Multipliers
* FTDI FT232H USB to SPI Device
* _ALL_ 32 FPGA GPIO on 0.1” headers
* _ALL_ FTDI pins brought to test points
* 4MB SPI Flash
* RGB LED
* On board 3.3V and 1.2V Regulators, can supply 3.3V to your project
* Open source schematic and layout using KiCAD design tools
* Integrated into the open source `APIO toolchain <https://github.com/FPGAwars/apio>`_


Please see the `wiki page <https://github.com/tinyvision-ai-inc/UPduino-v3.0/wiki>`_  for the changes that were implemented from v2.1. Some salient features are:

* 4 layer board with a solid ground plane, proper layout and decoupling for good signal integrity and FPGA operation
* Access to on-board 12MHz oscillator using a jumper (short R16)
* _All_ FPGA pins including LED driver pins are brought to 0.1" headers
* qSPI flash capability
* tinyFPGA bootloader compatible

Useful links:

* `osresearch <https://github.com/osresearch/up5k>`_: large collection of very useful code and a good overview.
* `UPduino FPGA tutorial using APIO <https://blog.idorobots.org/entries/upduino-fpga-tutorial.html>`_
* `A very detailed blog on implementing a RISCV in the FPGA <https://pingu98.wordpress.com/2019/04/08/>`_
* `Digi-Key FPGA Playlist <https://youtube.com/playlist?list=PLEBQazB0HUyT1WmMONxRZn9NmQ_9CIKhb>`_: "What is an FPGA" all the way to designing a risc-v custom peripheral in just 12 videos filled with great tutorials, links, and explanations.

TinyVision.ai blog posts:

* `Magic Smoke and PTC's <https://blogs.tinyvision.ai/upduino/power/ptc/2021/12/31/magic-smoke-and-PTCs.html>`_
* `Lattice Modelsim on Windows <https://blogs.tinyvision.ai/modelsim/windows/linux/radiant/lattice/2022/01/01/Using-Lattice-Modelsim-on-Win-Linux.html>`_
* `Ground trampolines and Phase Locked Loops <https://tinyvision.ai/blogs/processing-at-the-edge/ground-trampolines-and-phase-locked-loop>`_

.. toctree::
   :hidden:

   self
   
.. toctree::
   :maxdepth: 2
   :caption: Introduction
   :hidden:

   introduction/introduction

.. toctree::
   :maxdepth: 2
   :caption: Getting Started
   :hidden:

   getting_started/tool_installation
   getting_started/first_steps
   getting_started/verilog_resources
   
.. toctree::
   :maxdepth: 2
   :caption: Features
   :hidden:

   features/specs
   
.. toctree::
   :maxdepth: 2
   :caption: Tutorials
   :hidden:
   
   tutorials/blink_led.rst
   tutorials/bank_voltages
   tutorials/oscillator
   tutorials/disconnect_tricolor_led
   tutorials/fpga_sram_programming
   tutorials/qspi_flash
   tutorials/tinyfpga
   tutorials/riscv
   tutorials/open_ocd
   tutorials/pmod
   tutorials/adding_slave_select_to_fpga
