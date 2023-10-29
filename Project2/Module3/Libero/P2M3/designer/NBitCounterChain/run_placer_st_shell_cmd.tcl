read_sdc -scenario "place_and_route" -netlist "optimized" -pin_separator "/" -ignore_errors {X:/Graduate/ECEN5863/ProgrammableLogicProjects/Project2/Module3/Libero/P2M3/designer/NBitCounterChain/place_route.sdc}
set_options -tdpr_scenario "place_and_route" 
save
set_options -analysis_scenario "place_and_route"
report -type combinational_loops -format xml {X:\Graduate\ECEN5863\ProgrammableLogicProjects\Project2\Module3\Libero\P2M3\designer\NBitCounterChain\NBitCounterChain_layout_combinational_loops.xml}
report -type slack {X:\Graduate\ECEN5863\ProgrammableLogicProjects\Project2\Module3\Libero\P2M3\designer\NBitCounterChain\pinslacks.txt}
set coverage [report \
    -type     constraints_coverage \
    -format   xml \
    -slacks   no \
    {X:\Graduate\ECEN5863\ProgrammableLogicProjects\Project2\Module3\Libero\P2M3\designer\NBitCounterChain\NBitCounterChain_place_and_route_constraint_coverage.xml}]
set reportfile {X:\Graduate\ECEN5863\ProgrammableLogicProjects\Project2\Module3\Libero\P2M3\designer\NBitCounterChain\coverage_placeandroute}
set fp [open $reportfile w]
puts $fp $coverage
close $fp