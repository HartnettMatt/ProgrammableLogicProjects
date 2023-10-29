quietly set ACTELLIBNAME SmartFusion2
quietly set PROJECT_DIR "C:/Microsemi_Prj/Project2/P2M3/P2M3"

if {[file exists presynth/_info]} {
   echo "INFO: Simulation library presynth already exists"
} else {
   file delete -force presynth 
   vlib presynth
}
vmap presynth presynth
vmap SmartFusion2 "C:/Microsemi/Libero_SoC_v12.6/Designer/lib/modelsimpro/precompiled/vlog/SmartFusion2"

vlog -sv -work presynth "${PROJECT_DIR}/hdl/NBitCounter.v"

vsim -L SmartFusion2 -L presynth  -t 1fs presynth.NBitCounter
# The following lines are commented because no testbench is associated with the project
# add wave /testbench/*
# run 1000ns
