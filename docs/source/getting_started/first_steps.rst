First Steps
====

1. When you receive your UPduino, make sure it works properly before you proceed further! A simple way to do this is to plug the UPduino into a standard micro USB cable attached to a standard USB power supply such as a computer or a phone charger. 
  - You should see the green LED (D1) light up and also the 3 color LED go through a Red, Blue Green sequence. 
  - Also, if you are on a computer, you should see a new USB device called the "UPduino 3.0" show up in your list of USB devices. 
  - The board shows up as a serial port (COMxx on windows and /dev/ttyxx on Linux and Mac).
2. Download the toolchain of choice: Lattice Radiant and/or icestorm/apio.
3. Download the git repository for the UPduino and go the RTL/blink_led directory.
4. Test your toolchain installation:
  - apio/icestorm toolchain:
    - Type in "make" and this should create a bin file to be uploaded to the UPduino. 
    - For Windows, you will need to install Zadig and go through the process of switching the UPduino to the libusbk driver so that iceprog can see this. An alternative is to install the iceprog tool for windows and use that for programming instead of the icestorm version, some instructions are on [this forum](https://forum.1bitsquared.com/t/official-win10-instructions-missing/73).
    - Program the UPduino and ensure the green (D1) LED lights up and the 3 color LED starts cycling through its sequence.
5. Fiddle with the code!
