Tool Installation
=================

The UPduino can use an FPGA image generated from either the open source icestorm/apio toolchain or the Lattice Radiant tools.


icestorm Tool Installation
----

You can follow the instructions to install the icestorm toolchain from various links on the web. Some are listed below for reference:
- https://github.com/FPGAwars/toolchain-icestorm/wiki

APIO installation
-----------------

APIO is a powerful open source ecosystem for FPGAs. To install it, use pip, and go:
``pip install apio``

As the UPduino is fairly new, however, this release does not include the software to include the UPduino 3. Thus, you will need to manually configure it. Dowload the newest commit of APIO from here: https://github.com/FPGAwars/apio

To find out where pip installed apio on your system, go:
``pip show apio``

Go there, open the apio folder, and replace its contents (but not the folder itself) with the contents of the "apio" folder in the downloaded commit of the apio directory. **Note:** If you would like to be able to easily update it, as apio is frequently updated due to its open sourse nature, you can use Git.

Note, this process of replacement is limited to pip. If you use a different package manager, refer to where it stores its downloaded and installed packages.

Lattice Radiant Installation
----
You can follow instructions from teh Lattice website to install Radiant. Note that this tool only support Linux and Windows.
