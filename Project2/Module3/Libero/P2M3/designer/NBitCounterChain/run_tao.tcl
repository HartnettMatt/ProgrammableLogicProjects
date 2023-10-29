set_device -family {SmartFusion2} -die {M2S010} -speed {STD}
read_verilog -mode system_verilog {X:\Graduate\ECEN5863\ProgrammableLogicProjects\Project2\Module3\Libero\P2M3\hdl\NBitCounter.v}
 add_include_path  {X:\Graduate\ECEN5863\ProgrammableLogicProjects\Project2\Module3\Libero\P2M3\hdl}
read_verilog -mode system_verilog {X:\Graduate\ECEN5863\ProgrammableLogicProjects\Project2\Module3\Libero\P2M3\hdl\NBitCounterChain.v}
set_top_level {NBitCounterChain}
map_netlist
read_sdc {X:\Graduate\ECEN5863\ProgrammableLogicProjects\Project2\Module3\Libero\P2M3\constraint\user.sdc}
check_constraints {X:\Graduate\ECEN5863\ProgrammableLogicProjects\Project2\Module3\Libero\P2M3\constraint\synthesis_sdc_errors.log}
write_fdc {X:\Graduate\ECEN5863\ProgrammableLogicProjects\Project2\Module3\Libero\P2M3\designer\NBitCounterChain\synthesis.fdc}
