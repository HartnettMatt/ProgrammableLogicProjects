module binToBCD_minute (BIN, BCD0, BCD1, KEY, SW);

	input 		KEY;
	input 		[7:0] SW;
	input 		[8:0] BIN;
	output       [3:0] BCD0;
	output       [3:0] BCD1;
	
	reg [3:0] preset_minute1;
	reg [3:0] preset_minute2;

always@(*)
begin

	if(KEY)
	begin 
		 preset_minute1 <= SW[3:0];
		 preset_minute2 <= SW[7:4];
	end
	else
	
	begin
		 preset_minute1 <= BIN % 10;
		 preset_minute2 <= (BIN % 100)/10;
	end

end

assign BCD0 = preset_minute1;
assign BCD1 = preset_minute2;

endmodule
