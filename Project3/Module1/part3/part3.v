



module part3 (SW, LEDR);
	input [9:0] SW; // slide switches
	output [9:0] LEDR; // red LEDs

	// SW[9:8]	= S
	// SW[1:0]  = U
	// SW[3:2]  = V
	// SW[5:4]  = W
	
	assign LEDR[1:0] = SW[9] ? (SW[8] ? 0 : SW[5:4]) : (SW[8] ? SW[3:2] : SW[1:0]);
	
endmodule