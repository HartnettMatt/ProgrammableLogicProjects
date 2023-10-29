set_device \
    -family  SmartFusion2 \
    -die     PA4M1000_N \
    -package tq144 \
    -speed   STD \
    -tempr   {COM} \
    -voltr   {COM}
set_def {VOLTAGE} {1.2}
set_def {VCCI_1.2_VOLTR} {COM}
set_def {VCCI_1.5_VOLTR} {COM}
set_def {VCCI_1.8_VOLTR} {COM}
set_def {VCCI_2.5_VOLTR} {COM}
set_def {VCCI_3.3_VOLTR} {COM}
set_def {RTG4_MITIGATION_ON} {0}
set_def USE_CONSTRAINTS_FLOW 1
set_def NETLIST_TYPE EDIF
set_name NBitCounterChain
set_workdir {X:\Graduate\ECEN5863\ProgrammableLogicProjects\Project2\Module3\Libero\P2M3\designer\NBitCounterChain}
set_log     {X:\Graduate\ECEN5863\ProgrammableLogicProjects\Project2\Module3\Libero\P2M3\designer\NBitCounterChain\NBitCounterChain_sdc.log}
set_design_state pre_layout
