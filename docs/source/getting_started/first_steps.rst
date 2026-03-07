First Steps
===========

This guide helps you verify that your newly delivered UPduino board is working correctly.

.. image:: ../../../assets/UPduino_v3.0_front.png
   :width: 400
   :alt: UPduino v3.0 board

What You Need
-------------

**Micro USB Data Cable**
   The UPduino uses a **Micro USB** connector (not USB-C). Make sure you have a
   **data cable**, not a charge-only cable. Charge-only cables will power the board
   but won't allow communication with your computer.

   .. note::
      Micro USB was common before ~2020. If your computer only has USB-C ports
      (common on modern Macs and laptops), you'll need a **USB-C to Micro USB cable**
      or adapter.

   How to tell the difference:

   - **Data cable**: Usually thicker, often came with a phone or external drive
   - **Charge-only cable**: Often thinner, came with cheap power banks or LED lights
   - **When in doubt**: Try a cable that came with an Arduino, Raspberry Pi, or older Android phone

Connecting the Board
--------------------

1. Connect the UPduino to your computer using the Micro USB data cable.

2. **What you should see on the board:**

   If your board came pre-programmed from the manufacturer:

   - The green LED (D1) lights up
   - The RGB LED (D3) cycles through Red, Blue, Green sequence

   If the board was previously programmed with different firmware, the LED
   behavior may vary. What matters is that the serial port appears (see step 3).

3. **Verify the serial port in Terminal:**

   The board must be connected to a computer (not just a power supply). A USB
   power adapter without data lines will not work.

   To verify the board is recognized, compare the serial ports before and after
   connecting:

   **macOS:**
      .. code-block:: bash

         # Before connecting the board:
         ls /dev/tty.usbserial*
         # (should show nothing or existing devices)

         # After connecting the board:
         ls /dev/tty.usbserial*
         # A new port appears, e.g.: /dev/tty.usbserial-XXXX

   **Linux:**
      .. code-block:: bash

         # Before connecting:
         ls /dev/ttyUSB*

         # After connecting:
         ls /dev/ttyUSB*
         # A new port appears, e.g.: /dev/ttyUSB0

   **Windows:**
      - Open Device Manager, expand "Ports (COM & LPT)"
      - A new COM port (e.g., COM3) should appear when you connect the board
      - You may need to install FTDI drivers on older Windows versions

Troubleshooting
---------------

**No LEDs light up:**
   - Try a different USB cable (yours might be charge-only)
   - Try a different USB port
   - Check if the cable is fully inserted

**LEDs work but no serial port appears:**
   - Your cable is likely charge-only, try a data cable
   - On Windows: Install FTDI drivers from https://ftdichip.com/drivers/

**macOS: "Allow" dialog for USB accessory:**
   - Click "Allow" when macOS asks for permission to connect to the USB device

Test Conditions
---------------

This guide was tested with:

- **Board:** UPduino 3.1 (February 2026)
- **OS:** macOS 26.x (Tahoe) on Apple Silicon (M-series)
- **Cable:** USB-C to Micro USB data cable

Next Steps
----------

Once your board is recognized:

1. Download a toolchain: :doc:`tool_installation`
2. Try your first project: :doc:`../tutorials/blink_led`
