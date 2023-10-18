set_device -family {SmartFusion2} -die {M2S010} -speed {STD}
read_adl {X:\Graduate\ECEN5863\ProgrammableLogicProjects\Project2\Module1\SmartTimeTutorial\Shifter\Shifter\designer\Shifter\Shifter.adl}
read_afl {X:\Graduate\ECEN5863\ProgrammableLogicProjects\Project2\Module1\SmartTimeTutorial\Shifter\Shifter\designer\Shifter\Shifter.afl}
map_netlist
read_sdc {X:\Graduate\ECEN5863\ProgrammableLogicProjects\Project2\Module1\SmartTimeTutorial\Shifter\Shifter\constraint\user.sdc}
check_constraints {X:\Graduate\ECEN5863\ProgrammableLogicProjects\Project2\Module1\SmartTimeTutorial\Shifter\Shifter\constraint\timing_sdc_errors.log}
write_sdc -mode smarttime {X:\Graduate\ECEN5863\ProgrammableLogicProjects\Project2\Module1\SmartTimeTutorial\Shifter\Shifter\designer\Shifter\timing_analysis.sdc}
