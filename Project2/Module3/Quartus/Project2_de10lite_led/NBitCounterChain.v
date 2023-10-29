
//`timescale <time_units> / <precision>

module NBitCounterChain #(
   parameter counterSize   = 16,
   parameter numOfCounters = 10
) (
	input 		          			MAX10_CLK1_50,
	input 		[1:0]					KEY,
   output wire [counterSize-1:0] outCount,
	output		[9:0]					LEDR,
	output		     [7:0]		HEX0,
	output		     [7:0]		HEX1,
	output		     [7:0]		HEX2,
	output		     [7:0]		HEX3,
	output		     [7:0]		HEX4,
	output		     [7:0]		HEX5
);
   wire [counterSize-1:0] counts[numOfCounters:0];
   wire terminalCounts[numOfCounters:0];
	wire clk;
	wire reset;
	
	assign reset = ~KEY[0];
	assign clk = MAX10_CLK1_50;
	assign HEX0[7:0] = 8'b0;
	assign HEX1[7:0] = 8'b0;
	assign HEX2[7:0] = 8'b0;
	assign HEX3[7:0] = 8'b0;
	assign HEX4[7:0] = 8'b0;
	assign HEX5[7:0] = 8'b0;

   genvar i;
   generate
      NBitCounter counter0 (
                     .clk(clk),
                     .reset(reset),
                     .enable(1'b1), // enable subcounter by default
                     .count(counts[0]),
                     .terminalCount(terminalCounts[0])
                  );

      genvar j;
      for (j = 1; j < numOfCounters; j = j + 1) begin : genCounters
         NBitCounter counter (
                        .clk(clk),
                        .reset(reset),
                        .enable(terminalCounts[j-1]),
                        .count(counts[j]),
                        // use the terminal count from one counter to control the
                        // count enable of the next counter in a chain
                        .terminalCount(terminalCounts[j])
                     );
      end
   endgenerate

   // Attach the last terminal count to an I/O pin to force the synthesizer to compile
   assign outCount = counts[numOfCounters-1];
	
	//Make LEDs flash with the value from counter0
	assign LEDR[9:0] = counts[1][15:6];
	
endmodule // NBitCounterChain
