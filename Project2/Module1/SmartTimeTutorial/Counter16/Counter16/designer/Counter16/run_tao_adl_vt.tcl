set_device -family {SmartFusion2} -die {M2S010} -speed {STD}
read_adl {X:\Graduate\ECEN5863\ProgrammableLogicProjects\Project2\Module1\SmartTimeTutorial\Counter16\Counter16\designer\Counter16\Counter16.adl}
read_afl {X:\Graduate\ECEN5863\ProgrammableLogicProjects\Project2\Module1\SmartTimeTutorial\Counter16\Counter16\designer\Counter16\Counter16.afl}
map_netlist
read_sdc {X:\Graduate\ECEN5863\ProgrammableLogicProjects\Project2\Module1\SmartTimeTutorial\Counter16\Counter16\constraint\COUNT16.sdc}
check_constraints {X:\Graduate\ECEN5863\ProgrammableLogicProjects\Project2\Module1\SmartTimeTutorial\Counter16\Counter16\constraint\timing_sdc_errors.log}
write_sdc -mode smarttime {X:\Graduate\ECEN5863\ProgrammableLogicProjects\Project2\Module1\SmartTimeTutorial\Counter16\Counter16\designer\Counter16\timing_analysis.sdc}
