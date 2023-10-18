# Microsemi Corp.
# Date: 2023-Oct-17 20:15:18
# This file was generated based on the following SDC source files:
#   X:/Graduate/ECEN5863/ProgrammableLogicProjects/Project2/Module1/SmartTimeTutorial/Counter16/Counter16/constraint/COUNT16.sdc
#   X:/Graduate/ECEN5863/ProgrammableLogicProjects/Project2/Module1/SmartTimeTutorial/Counter16/Counter16/constraint/user.sdc
#

create_clock -name {clk} -period 5.714 -waveform {0 2.857 } [ get_ports { clk } ]
set_input_delay 1 -min  -clock { clk } [ get_ports { en rst } ]
set_input_delay 2 -max  -clock { clk } [ get_ports { en rst } ]
set_input_delay 1 -min  -clock { clk } [ get_ports { en rst } ]
set_input_delay 2 -max  -clock { clk } [ get_ports { en rst } ]
set_output_delay -2.5  -clock { clk } [ all_outputs ]
set_output_delay -2.5  -clock { clk } [ all_outputs ]
