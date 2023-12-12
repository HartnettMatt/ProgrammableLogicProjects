# TCL File Generated by Component Editor 18.1
# Mon Dec 11 18:42:16 MST 2023
# DO NOT MODIFY


# 
# chu_avalon_vga "chu_avalon_vga" v1.0
#  2023.12.11.18:42:16
# 
# 

# 
# request TCL package from ACDS 16.1
# 
package require -exact qsys 16.1


# 
# module chu_avalon_vga
# 
set_module_property DESCRIPTION ""
set_module_property NAME chu_avalon_vga
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property AUTHOR ""
set_module_property DISPLAY_NAME chu_avalon_vga
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false
set_module_property REPORT_HIERARCHY false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL chu_avalon_vga
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
set_fileset_property QUARTUS_SYNTH ENABLE_FILE_OVERWRITE_MODE false
add_fileset_file avalon_vga.v VERILOG PATH avalon_vga.v TOP_LEVEL_FILE
add_fileset_file palette.v VERILOG PATH palette.v
add_fileset_file vga_sync.v VERILOG PATH vga_sync.v
add_fileset_file vram_ctrl.v VERILOG PATH vram_ctrl.v


# 
# parameters
# 


# 
# display items
# 


# 
# connection point clock
# 
add_interface clock clock end
set_interface_property clock clockRate 0
set_interface_property clock ENABLED true
set_interface_property clock EXPORT_OF ""
set_interface_property clock PORT_NAME_MAP ""
set_interface_property clock CMSIS_SVD_VARIABLES ""
set_interface_property clock SVD_ADDRESS_GROUP ""

add_interface_port clock clk clk Input 1


# 
# connection point reset
# 
add_interface reset reset end
set_interface_property reset associatedClock clock
set_interface_property reset synchronousEdges DEASSERT
set_interface_property reset ENABLED true
set_interface_property reset EXPORT_OF ""
set_interface_property reset PORT_NAME_MAP ""
set_interface_property reset CMSIS_SVD_VARIABLES ""
set_interface_property reset SVD_ADDRESS_GROUP ""

add_interface_port reset reset reset Input 1


# 
# connection point vga
# 
add_interface vga avalon end
set_interface_property vga addressUnits WORDS
set_interface_property vga associatedClock clock
set_interface_property vga associatedReset reset
set_interface_property vga bitsPerSymbol 8
set_interface_property vga burstOnBurstBoundariesOnly false
set_interface_property vga burstcountUnits WORDS
set_interface_property vga explicitAddressSpan 0
set_interface_property vga holdTime 0
set_interface_property vga linewrapBursts false
set_interface_property vga maximumPendingReadTransactions 0
set_interface_property vga maximumPendingWriteTransactions 0
set_interface_property vga readLatency 0
set_interface_property vga readWaitTime 1
set_interface_property vga setupTime 0
set_interface_property vga timingUnits Cycles
set_interface_property vga writeWaitTime 0
set_interface_property vga ENABLED true
set_interface_property vga EXPORT_OF ""
set_interface_property vga PORT_NAME_MAP ""
set_interface_property vga CMSIS_SVD_VARIABLES ""
set_interface_property vga SVD_ADDRESS_GROUP ""

add_interface_port vga vga_address address Input 20
add_interface_port vga vga_chipselect chipselect Input 1
add_interface_port vga vga_write write Input 1
add_interface_port vga vga_read read Input 1
add_interface_port vga vga_writedata writedata Input 32
add_interface_port vga vga_readdata readdata Output 32
set_interface_assignment vga embeddedsw.configuration.isFlash 0
set_interface_assignment vga embeddedsw.configuration.isMemoryDevice 0
set_interface_assignment vga embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment vga embeddedsw.configuration.isPrintableDevice 0


# 
# connection point vga_conduit
# 
add_interface vga_conduit conduit end
set_interface_property vga_conduit associatedClock clock
set_interface_property vga_conduit associatedReset reset
set_interface_property vga_conduit ENABLED true
set_interface_property vga_conduit EXPORT_OF ""
set_interface_property vga_conduit PORT_NAME_MAP ""
set_interface_property vga_conduit CMSIS_SVD_VARIABLES ""
set_interface_property vga_conduit SVD_ADDRESS_GROUP ""

add_interface_port vga_conduit vsync vsync Output 1
add_interface_port vga_conduit hsync hsync Output 1
add_interface_port vga_conduit rgb rgb Output 12


# 
# connection point sram_conduit
# 
add_interface sram_conduit conduit end
set_interface_property sram_conduit associatedClock clock
set_interface_property sram_conduit associatedReset reset
set_interface_property sram_conduit ENABLED true
set_interface_property sram_conduit EXPORT_OF ""
set_interface_property sram_conduit PORT_NAME_MAP ""
set_interface_property sram_conduit CMSIS_SVD_VARIABLES ""
set_interface_property sram_conduit SVD_ADDRESS_GROUP ""

add_interface_port sram_conduit sram_addr sram_addr Output 18
add_interface_port sram_conduit sram_ce_n sram_ce_n Output 1
add_interface_port sram_conduit sram_dq sram_dq Bidir 16
add_interface_port sram_conduit sram_lb_n sram_lb_n Output 1
add_interface_port sram_conduit sram_oe_n sram_oe_n Output 1
add_interface_port sram_conduit sram_ub_n sram_ub_n Output 1
add_interface_port sram_conduit sram_we_n sram_we_n Output 1
