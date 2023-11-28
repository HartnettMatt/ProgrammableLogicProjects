// This module drives the HEX displays to display a counter of munites, seconds and centi seconds

module part3 (SW, KEY, CLOCK_50, LEDR, HEX0, HEX1, HEX2, HEX3, HEX4, HEX5);
	input       [7:0]  SW;
	input 		[2:0] KEY;
	input             CLOCK_50;
	output 		[9:0] LEDR;
	output      [6:0] HEX0;
	output      [6:0] HEX1;
	output      [6:0] HEX2;
	output      [6:0] HEX3;
	output      [6:0] HEX4;
	output      [6:0] HEX5;
	
	//for clock divider
	parameter clkFreq = 500000; 	// 50 MHz system clock - 50000 for 1/100 of a second
	parameter countersize = 21;
	
	//for 100th sec
	parameter count1 = 100; 	// centi count to 99
	parameter countersize1 = 8;
	
	//for 1 sec and minute
	parameter count2 = 60; 	// second and minute count to 59
	parameter countersize2 = 8;
	
	wire 				clk;
	wire 				rst_n;
	wire				switch_preset;
	wire 				key0_pause;
	reg				preset_flag;
	
	wire 				[countersize-1:0] 	q;
	wire 				rollover, rollover1, rollover2;
	wire  [6:0] 	HEX0, HEX1, HEX2, HEX3, HEX4, HEX5;	
	wire	[3:0]		BCD0, BCD1, BCD2,BCD3, BCD4, BCD5 ;
	wire	[8:0]		CentiCount,SecondCount, MinuteCount;
	reg 				clk_enable; 
	
	
	assign LEDR[9] 			= rollover;
	assign LEDR[7:0] 			= q[7:0];
	assign clk 					= CLOCK_50;
	
	assign rst_n 				= KEY[2];
	assign key0_pause 		= ~KEY[0];
	
	//clock divider
	counter U0(
		.Clock(clk),
		.Reset_n(rst_n),
		.Q(q),
		.Rollover(rollover));
	defparam U0.n = countersize;		// Lowest number of bits required to store the largest value
	defparam U0.k = clkFreq; 			// Count to the clock frequency to produce a 1 pulse per second rollover signal
	
	//centi counter
	counter U1(
		.Clock(clk_enable ? rollover : 1'b0),
		.Reset_n(rst_n),
		.Q(CentiCount),
		.Rollover(rollover1));
	defparam U1.n = countersize1;					// Lowest number of bits required to store the largest value
	defparam U1.k = count1; 				// Count to the highest value that can be displayed on the three hex
	
	//second counter
	counter U2(
		.Clock(clk_enable ? rollover1 : 1'b0),
		.Reset_n(rst_n),
		.Q(SecondCount),
		.Rollover(rollover2));
	defparam U2.n = countersize2;					// Lowest number of bits required to store the largest value
	defparam U2.k = count2; 				// Count to the highest value that can be displayed on the three hex
		
	//minute counter
	counter U3(
		.Clock(clk_enable ? rollover2 : 1'b0),
		.Reset_n(rst_n),
		.Q(MinuteCount),
		.Rollover(r));
	defparam U3.n = countersize2;					// Lowest number of bits required to store the largest value
	defparam U3.k = count2; 				// Count to the highest value that can be displayed on the three hex
		
	// Convert binary to BCD
	binToBCD U4(
		.BIN(CentiCount),
		.BCD0(BCD0),
		.BCD1(BCD1));
		
	binToBCD U5(
		.BIN(SecondCount),
		.BCD0(BCD2),
		.BCD1(BCD3));
		
	binToBCD_minute U6(
		.SW(SW),
		.KEY(~KEY[1]),
		.BIN(MinuteCount),
		.BCD0(BCD4),
		.BCD1(BCD5));	
		
		
	// Convert BCD to display driver signal
	BCDToHex U7(
		.Q(BCD0),
		.HEX(HEX0));
		
	BCDToHex U8(
		.Q(BCD1),
		.HEX(HEX1));

	BCDToHex U9(
		.Q(BCD2),
		.HEX(HEX2));
		
	BCDToHex U10(
		.Q(BCD3),
		.HEX(HEX3));
		
	BCDToHex U11(
		.Q(BCD4),
		.HEX(HEX4));		

	BCDToHex U12(
		.Q(BCD5),
		.HEX(HEX5));		
		
always @(posedge clk)
begin
	
	if (key0_pause) 
	begin
		 // Pause the clock when KEY0 is pressed
		 clk_enable <= 0;
	end 
	else 
	begin
		 // Continue the clock when KEY0 is released
		 clk_enable <= 1;
	end

end



endmodule
