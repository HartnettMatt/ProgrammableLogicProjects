module binToBCD (BIN, BCD0, BCD1);
	input 		[8:0] BIN;
	output      [3:0] BCD0;
	output      [3:0] BCD1;
	
	assign BCD0 = BIN % 10;
	assign BCD1 = (BIN % 100)/10;
	
endmodule