read_sdc -scenario "place_and_route" -netlist "optimized" -pin_separator "/" -ignore_errors {X:/Graduate/ECEN5863/ProgrammableLogicProjects/Project2/Module1/SmartTimeTutorial/Counter16/Counter16/designer/Counter16/place_route.sdc}
set_options -tdpr_scenario "place_and_route" 
save
set_options -analysis_scenario "place_and_route"
report -type combinational_loops -format xml {X:\Graduate\ECEN5863\ProgrammableLogicProjects\Project2\Module1\SmartTimeTutorial\Counter16\Counter16\designer\Counter16\Counter16_layout_combinational_loops.xml}
report -type slack {X:\Graduate\ECEN5863\ProgrammableLogicProjects\Project2\Module1\SmartTimeTutorial\Counter16\Counter16\designer\Counter16\pinslacks.txt}
set coverage [report \
    -type     constraints_coverage \
    -format   xml \
    -slacks   no \
    {X:\Graduate\ECEN5863\ProgrammableLogicProjects\Project2\Module1\SmartTimeTutorial\Counter16\Counter16\designer\Counter16\Counter16_place_and_route_constraint_coverage.xml}]
set reportfile {X:\Graduate\ECEN5863\ProgrammableLogicProjects\Project2\Module1\SmartTimeTutorial\Counter16\Counter16\designer\Counter16\coverage_placeandroute}
set fp [open $reportfile w]
puts $fp $coverage
close $fp