set_device -family {SmartFusion2} -die {M2S010} -speed {STD}
read_adl {X:\Graduate\ECEN5863\ProgrammableLogicProjects\Project2\Module2\SF2MakerDemo\SF2MakerDemo\designer\MakerDemo\MakerDemo.adl}
read_afl {X:\Graduate\ECEN5863\ProgrammableLogicProjects\Project2\Module2\SF2MakerDemo\SF2MakerDemo\designer\MakerDemo\MakerDemo.afl}
map_netlist
check_constraints {X:\Graduate\ECEN5863\ProgrammableLogicProjects\Project2\Module2\SF2MakerDemo\SF2MakerDemo\constraint\timing_sdc_errors.log}
write_sdc -mode smarttime {X:\Graduate\ECEN5863\ProgrammableLogicProjects\Project2\Module2\SF2MakerDemo\SF2MakerDemo\designer\MakerDemo\timing_analysis.sdc}
