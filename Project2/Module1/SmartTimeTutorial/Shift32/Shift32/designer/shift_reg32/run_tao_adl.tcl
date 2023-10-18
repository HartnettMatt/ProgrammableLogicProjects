set_device -family {SmartFusion2} -die {M2S010} -speed {STD}
read_adl {X:\Graduate\ECEN5863\ProgrammableLogicProjects\Project2\Module1\SmartTimeTutorial\Shift32\Shift32\designer\shift_reg32\shift_reg32.adl}
read_afl {X:\Graduate\ECEN5863\ProgrammableLogicProjects\Project2\Module1\SmartTimeTutorial\Shift32\Shift32\designer\shift_reg32\shift_reg32.afl}
map_netlist
read_sdc {X:\Graduate\ECEN5863\ProgrammableLogicProjects\Project2\Module1\SmartTimeTutorial\Shift32\Shift32\constraint\user.sdc}
check_constraints {X:\Graduate\ECEN5863\ProgrammableLogicProjects\Project2\Module1\SmartTimeTutorial\Shift32\Shift32\constraint\placer_sdc_errors.log}
write_sdc -mode layout {X:\Graduate\ECEN5863\ProgrammableLogicProjects\Project2\Module1\SmartTimeTutorial\Shift32\Shift32\designer\shift_reg32\place_route.sdc}
