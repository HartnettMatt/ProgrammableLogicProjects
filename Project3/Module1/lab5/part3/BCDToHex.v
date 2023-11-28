module BCDToHex (Q, HEX);
	input 		[3:0] Q;
	output      [6:0] HEX;
	
	reg        [6:0] HEX;
	
	always @(*) begin
		case (Q)
			4'b0000 : HEX = 8'b11000000;
         4'b0001 : HEX = 8'b11111001;
         4'b0010 : HEX = 8'b10100100;
         4'b0011 : HEX = 8'b10110000;
         4'b0100 : HEX = 8'b10011001;
         4'b0101 : HEX = 8'b10010010;
         4'b0110 : HEX = 8'b10000010;
         4'b0111 : HEX = 8'b11111000;
         4'b1000 : HEX = 8'b10000000;
         4'b1001 : HEX = 8'b10011000;
         4'b1010 : HEX = 8'b00001000;
         4'b1011 : HEX = 8'b00000000;
         4'b1100 : HEX = 8'b01000110;
         4'b1101 : HEX = 8'b01000000;
         4'b1110 : HEX = 8'b00000110;
         4'b1111 : HEX = 8'b00001110;
         default : HEX = 8'b00000000;
		endcase
	end
endmodule