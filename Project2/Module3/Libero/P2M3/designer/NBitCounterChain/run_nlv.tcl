# Netlist Viewer TCL File
set_family -name SmartFusion2
top_module -name NBitCounterChain
addfile -view RTL -lib work -type VLOG -mode system_verilog -name {X:/Graduate/ECEN5863/ProgrammableLogicProjects/Project2/Module3/Libero/P2M3/hdl/NBitCounter.v}
addfile -view RTL -lib work -type VLOG -mode VLOG_INC_DIR -name {X:\Graduate\ECEN5863\ProgrammableLogicProjects\Project2\Module3\Libero\P2M3\hdl}
addfile -view RTL -lib work -type VLOG -mode system_verilog -name {X:/Graduate/ECEN5863/ProgrammableLogicProjects/Project2/Module3/Libero/P2M3/hdl/NBitCounterChain.v}
addfile -view HIER -lib work -type VLOG -mode system_verilog -name {X:/Graduate/ECEN5863/ProgrammableLogicProjects/Project2/Module3/Libero/P2M3/synthesis/NBitCounterChain.vm}
addfile -view FLAT -lib work -type AFL -mode NONE -name {X:/Graduate/ECEN5863/ProgrammableLogicProjects/Project2/Module3/Libero/P2M3/designer/NBitCounterChain/NBitCounterChain.afl}