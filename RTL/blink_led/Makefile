# Makefile to build UPduino v3.0 rgb_blink.v  with icestorm toolchain
# Original Makefile is taken from: 
# https://github.com/tomverbeure/upduino/tree/master/blink
# On Linux, copy the included upduinov3.rules to /etc/udev/rules.d/ so that we don't have
# to use sudo to flash the bit file.
# Thanks to thanhtranhd for making changes to thsi makefile.

rgb_blink.bin: rgb_blink.asc
	icepack rgb_blink.asc rgb_blink.bin

rgb_blink.asc: rgb_blink.json ../common/upduino.pcf
	nextpnr-ice40 --up5k --package sg48 --json rgb_blink.json --pcf ../common/upduino.pcf --asc rgb_blink.asc   # run place and route

rgb_blink.json: rgb_blink.v
	yosys -q -p "synth_ice40 -json rgb_blink.json" rgb_blink.v

.PHONY: flash
flash:
	iceprog -d i:0x0403:0x6014 rgb_blink.bin

.PHONY: clean
clean:
	$(RM) -f rgb_blink.json rgb_blink.asc rgb_blink.bin
