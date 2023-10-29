## Generated SDC file "P2M3.sdc"

## Copyright (C) 2018  Intel Corporation. All rights reserved.
## Your use of Intel Corporation's design tools, logic functions 
## and other software and tools, and its AMPP partner logic 
## functions, and any output files from any of the foregoing 
## (including device programming or simulation files), and any 
## associated documentation or information are expressly subject 
## to the terms and conditions of the Intel Program License 
## Subscription Agreement, the Intel Quartus Prime License Agreement,
## the Intel FPGA IP License Agreement, or other applicable license
## agreement, including, without limitation, that your use is for
## the sole purpose of programming logic devices manufactured by
## Intel and sold by Intel or its authorized distributors.  Please
## refer to the applicable agreement for further details.


## VENDOR  "Altera"
## PROGRAM "Quartus Prime"
## VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

## DATE    "Sun Oct 29 19:23:59 2023"

##
## DEVICE  "10M50DAF484C6GES"
##


#**************************************************************
# Time Information
#**************************************************************

set_time_format -unit ns -decimal_places 3



#**************************************************************
# Create Clock
#**************************************************************

create_clock -name {clk} -period 11.000 -waveform { 0.000 5.500 } [get_ports { clk }]


#**************************************************************
# Create Generated Clock
#**************************************************************



#**************************************************************
# Set Clock Latency
#**************************************************************



#**************************************************************
# Set Clock Uncertainty
#**************************************************************



#**************************************************************
# Set Input Delay
#**************************************************************

set_input_delay -add_delay  -clock [get_clocks {clk}]  3.000 [get_ports {reset}]


#**************************************************************
# Set Output Delay
#**************************************************************

set_output_delay -add_delay  -clock [get_clocks {clk}]  2.000 [get_ports {outCount[0]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  2.000 [get_ports {outCount[1]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  2.000 [get_ports {outCount[2]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  2.000 [get_ports {outCount[3]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  2.000 [get_ports {outCount[4]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  2.000 [get_ports {outCount[5]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  2.000 [get_ports {outCount[6]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  2.000 [get_ports {outCount[7]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  2.000 [get_ports {outCount[8]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  2.000 [get_ports {outCount[9]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  2.000 [get_ports {outCount[10]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  2.000 [get_ports {outCount[11]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  2.000 [get_ports {outCount[12]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  2.000 [get_ports {outCount[13]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  2.000 [get_ports {outCount[14]}]
set_output_delay -add_delay  -clock [get_clocks {clk}]  2.000 [get_ports {outCount[15]}]


#**************************************************************
# Set Clock Groups
#**************************************************************



#**************************************************************
# Set False Path
#**************************************************************



#**************************************************************
# Set Multicycle Path
#**************************************************************



#**************************************************************
# Set Maximum Delay
#**************************************************************



#**************************************************************
# Set Minimum Delay
#**************************************************************



#**************************************************************
# Set Input Transition
#**************************************************************

