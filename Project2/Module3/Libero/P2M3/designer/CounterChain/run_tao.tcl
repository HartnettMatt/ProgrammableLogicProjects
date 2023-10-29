set_device -family {SmartFusion2} -die {M2S010} -speed {STD}
read_verilog -mode system_verilog {C:\Microsemi_Prj\Project2\P2M3\P2M3\hdl\NBitCounterChain.v}
set_top_level {CounterChain}
map_netlist
check_constraints {C:\Microsemi_Prj\Project2\P2M3\P2M3\constraint\synthesis_sdc_errors.log}
write_fdc {C:\Microsemi_Prj\Project2\P2M3\P2M3\designer\CounterChain\synthesis.fdc}
