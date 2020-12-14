if {[catch {

# define run engine funtion
source [file join {C:/lscc/radiant/2.2} scripts tcl flow run_engine.tcl]
# define global variables
global para
set para(gui_mode) 1
set para(prj_dir) "F:/whathisface/UPduino-v3.0/RTL/Lattice-Radiant-Project-v2p2/rgb_blinky"
# synthesize IPs
# synthesize VMs
# synthesize top design
file delete -force -- rgb_blinky_rgb_blinky_imp.vm rgb_blinky_rgb_blinky_imp.ldc
run_engine synpwrap -prj "rgb_blinky_rgb_blinky_imp_synplify.tcl" -log "rgb_blinky_rgb_blinky_imp.srf"
run_postsyn [list -a iCE40UP -p iCE40UP5K -t SG48 -sp High-Performance_1.2V -oc Industrial -top -w -o rgb_blinky_rgb_blinky_imp_syn.udb rgb_blinky_rgb_blinky_imp.vm] "F:/whathisface/UPduino-v3.0/RTL/Lattice-Radiant-Project-v2p2/rgb_blinky/rgb_blinky_imp/rgb_blinky_rgb_blinky_imp.ldc"

} out]} {
   runtime_log $out
   exit 1
}
