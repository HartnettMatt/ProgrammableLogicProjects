// This module drives the HEX displays to count up in decimal from 0 to 999

module part2 (KEY, CLOCK_50, LEDR, HEX0, HEX1, HEX2);
	input 		[3:0] KEY;
	input             CLOCK_50;
	output 		[9:0] LEDR;
	output      [6:0] HEX0;
	output      [6:0] HEX1;
	output      [6:0] HEX2;
	
	parameter clkFreq = 50000000; 	// 50 MHz system clock
	parameter countersize = 29;
	
	
	wire 				clk;
	wire 				rst_n;
	wire 	[countersize-1:0] 	q;
	wire 				rollover;
	wire 	[6:0] 	HEX0;
	wire	[3:0]		BCD0, BCD1, BCD2;
	wire	[9:0]		oneSecondCount;

	assign LEDR[9] 			= rollover;
	assign LEDR[7:0] 			= q[7:0];
	assign clk 					= CLOCK_50;
	assign rst_n 				= KEY[0];
	
	// Generate pulse per second rollover signal
	counter U0(
		.Clock(clk),
		.Reset_n(rst_n),
		.Q(q),
		.Rollover(rollover));
	defparam U0.n = countersize;		// Lowest number of bits required to store the largest value
	defparam U0.k = clkFreq; 			// Count to the clock frequency to produce a 1 pulse per second rollover signal
	
	
	counter U1(
		.Clock(rollover),
		.Reset_n(rst_n),
		.Q(oneSecondCount),
		.Rollover(r));
	defparam U1.n = 10;					// Lowest number of bits required to store the largest value
	defparam U1.k = 999; 				// Count to the highest value that can be displayed on the three hex
	
		
	// Convert binary oneSecondCount to BCD
	binToBCD U2(
		.BIN(oneSecondCount),
		.BCD0(BCD0),
		.BCD1(BCD1),
		.BCD2(BCD2));
		
	// Convert BCD to display driver signal
	BCDToHex U3(
		.Q(BCD0),
		.HEX(HEX0));
		
	BCDToHex U4(
		.Q(BCD1),
		.HEX(HEX1));

	BCDToHex U5(
		.Q(BCD2),
		.HEX(HEX2));

endmodule