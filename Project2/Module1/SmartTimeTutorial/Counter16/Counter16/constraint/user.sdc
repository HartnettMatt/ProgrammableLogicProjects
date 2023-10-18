set_input_delay 1 -min  -clock { clk } [ get_ports { en rst } ]
set_input_delay 2 -max  -clock { clk } [ get_ports { en rst } ]
set_output_delay -2.5  -clock { clk } [ all_outputs ]
