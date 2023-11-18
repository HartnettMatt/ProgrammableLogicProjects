


// Simple module for DE1-SoC and DE0-CV that connects the SW switches to the LEDR lights

module part1 (SW, LEDR);
	input [9:0] SW; // slide switches
	output [9:0] LEDR; // red LEDs

	assign LEDR = SW;
endmodule

