quietly set ACTELLIBNAME SmartFusion2
quietly set PROJECT_DIR "X:/Graduate/ECEN5863/ProgrammableLogicProjects/Project2/Module3/Libero/P2M3"

if {[file exists ../designer/NBitCounterChain/simulation/postlayout/_info]} {
   echo "INFO: Simulation library ../designer/NBitCounterChain/simulation/postlayout already exists"
} else {
   file delete -force ../designer/NBitCounterChain/simulation/postlayout 
   vlib ../designer/NBitCounterChain/simulation/postlayout
}
vmap postlayout ../designer/NBitCounterChain/simulation/postlayout
vmap SmartFusion2 "D:/Microsemi/Libero_SoC_v12.6/Designer/lib/modelsimpro/precompiled/vlog/SmartFusion2"

vlog -sv -work postlayout "${PROJECT_DIR}/designer/NBitCounterChain/NBitCounterChain_ba.v"

vsim -L SmartFusion2 -L postlayout  -t 1fs -sdfmax /NBitCounterChain=${PROJECT_DIR}/designer/NBitCounterChain/NBitCounterChain_ba.sdf +transport_path_delays postlayout.NBitCounterChain
# The following lines are commented because no testbench is associated with the project
# add wave /testbench/*
# run 1000ns
