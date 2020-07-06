.. this is a comment, it is not rendered
   when adding new *.rst files, reference them here
   in this index.rst for them to be rendered and added to the
   table of contents


=====================
UPduino Documentation
=====================

TinyVision.ai
*************

UPDuino v3.0: PCB Design Files, Designs, Documentation
------------------------------------------------------

The UPDuino v3.0 is a small, low-cost FPGA board. The board features an on-board FPGA programmer, flash and LED with _all_ FPGA pins brought out to easy to use 0.1" header pins for fast prototyping.

The tinyVision.ai UPduino v3.0 Board Features:

* Lattice UltraPlus ICE40UP5K FPGA with 5.3K LUTs, 1Mb SPRAM, 120Kb DPRAM, 8 Multipliers
* FTDI FT232H USB to SPI Device
* _ALL_ 32 FPGA GPIO on 0.1” headers
* 4MB SPI Flash
* RGB LED
* On board 3.3V and 1.2V Regulators, can supply 3.3V to your project
* Open source schematic and layout using KiCAD design tools
* Integrated into the open source `APIO toolchain <https://github.com/FPGAwars/apio>`_


Please see the `wiki page <https://github.com/tinyvision-ai-inc/UPduino-v3.0/wiki>`_  for the changes that were implemented from v2.1. Some salient features are:

* 4 layer board with a solid ground plane, proper layout and decoupling for good signal integrity and FPGA operation
* Access to on-board 12MHz oscillator using a jumper (short R16)
* _All_ FPGA pins including LED driver pins are brought to 0.1" headers
* qSPI capabile: Short R24, R25
* tinyFPGA bootloader compatible (short R22/R23/C26, install 1.5K on R21, open R35/R36)

Please fill out the `survey <https://www.surveymonkey.com/r/HH536D8>`_ to suggest improvements to this board. We really appreciate the feedback and will make improvements as business permits!

Useful links:

* `osresearch <https://github.com/osresearch/up5k>`_: large collection of very useful code and a good overview.
* `UPduino FPGA tutorial using APIO <https://blog.idorobots.org/entries/upduino-fpga-tutorial.html>`_
* `A very detailed blog on implementing a RISCV in the FPGA <https://pingu98.wordpress.com/2019/04/08/>`_

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
   
.. toctree::
   :maxdepth: 2
   :caption: Features
   :hidden:

   features/specs
   
.. toctree::
   :maxdepth: 2
   :caption: Tutorials
   :hidden:

   tutorials/usage
