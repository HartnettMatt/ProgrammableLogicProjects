create_clock -name {clk} -period 1000 -waveform {0 500 } [ get_nets { clk clk_c counter0/clk_c } ]
