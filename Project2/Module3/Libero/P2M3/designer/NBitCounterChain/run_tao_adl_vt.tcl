set_device -family {SmartFusion2} -die {M2S010} -speed {STD}
read_adl {X:\Graduate\ECEN5863\ProgrammableLogicProjects\Project2\Module3\Libero\P2M3\designer\NBitCounterChain\NBitCounterChain.adl}
read_afl {X:\Graduate\ECEN5863\ProgrammableLogicProjects\Project2\Module3\Libero\P2M3\designer\NBitCounterChain\NBitCounterChain.afl}
map_netlist
read_sdc {X:\Graduate\ECEN5863\ProgrammableLogicProjects\Project2\Module3\Libero\P2M3\constraint\user.sdc}
check_constraints {X:\Graduate\ECEN5863\ProgrammableLogicProjects\Project2\Module3\Libero\P2M3\constraint\timing_sdc_errors.log}
write_sdc -mode smarttime {X:\Graduate\ECEN5863\ProgrammableLogicProjects\Project2\Module3\Libero\P2M3\designer\NBitCounterChain\timing_analysis.sdc}
