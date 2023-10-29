transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+X:/Graduate/ECEN5863/ProgrammableLogicProjects/Project2/Module3/Quartus/Project2_de10lite {X:/Graduate/ECEN5863/ProgrammableLogicProjects/Project2/Module3/Quartus/Project2_de10lite/NBitCounterChain.v}
vlog -vlog01compat -work work +incdir+X:/Graduate/ECEN5863/ProgrammableLogicProjects/Project2/Module3/Quartus/Project2_de10lite {X:/Graduate/ECEN5863/ProgrammableLogicProjects/Project2/Module3/Quartus/Project2_de10lite/NBitCounter.v}

