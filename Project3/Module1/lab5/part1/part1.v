module part1 (KEY, LEDR);
	input 		[3:0] KEY;
	output 		[9:0] LEDR;
	
	
	wire clk;
	wire rst_n;
	wire [7:0] q;
	wire rollover;

	assign LEDR[9] = rollover;
	assign LEDR[7:0] = q[7:0];
	assign clk = KEY[1];
	assign rst_n = KEY[0];
	
	counter U0(
		.Clock(clk),
		.Reset_n(rst_n),
		.Q(q),
		.Rollover(rollover));
		
	defparam U0.n = 8;
	defparam U0.k = 20;

endmodule