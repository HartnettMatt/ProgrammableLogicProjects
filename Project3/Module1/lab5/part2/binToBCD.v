module binToBCD (BIN, BCD0, BCD1, BCD2);
	input 		[9:0] BIN;
	output      [3:0] BCD0;
	output      [3:0] BCD1;
	output      [3:0] BCD2;

	assign BCD0 = BIN % 10;
	assign BCD1 = (BIN % 100)/10;
	assign BCD2 = (BIN % 1000)/100;
	
endmodule