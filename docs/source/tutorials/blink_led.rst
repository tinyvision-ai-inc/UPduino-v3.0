Blinking an LED
===============

Blinking an LED on the UPduino 3 is its "hello world"

Getting Started
----

The sample code to blink an LED is built-in to this repository! 

https://github.com/tinyvision-ai-inc/UPduino-v3.0

Go to RTL > blink_led folder, to see the example.

Running the Code
-----------------

The code can easily be run! First, make sure the UPduino is plugged in.

If you want to run the code using icetools (iceprog, specifically), type: ``make``

Then: ``iceprog rgb_blink.bin``

You should see the LED blink!

If you want to use apio, first type: ``apio init --board upduino3``

Then: ``apio verify`` to make sure your code works, and then finally:

``apio build`` and ``apio upload``

The LED should blink now!

Making Changes
--------------

So the LED is (hopefully) blinking now. If you want to change the code or learn how it works, open the rgb_blink.v file

*.v stands for Verilog, a low-level programming language*

The code runs asynchroniously, meaning that multiple lines can run at once on the board.

Anyways, **tinker around with the code!** Some things to do:

  - Make it blink a different color
    - Maybe white? Yellow? A random hex value?
  - Make it blink in a different interval
   - Make it go fast
   - How about slow?
   - Can the LED stay on a solid color?
  - Try different brightness values
    - How bright can it go? How many levels are there?
    - Can you do a "breathing" effect, where the LED eases in and out of brightness?
    
There are endless possibilities with this board! Getting an LED to blink is just the start...
