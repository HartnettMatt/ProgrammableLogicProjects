///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: NBitCounterChain.v
// File history:
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//      <Revision number>: <Date>: <Comments>
//
// Description:
//
// <Description here>
//
// Targeted device: <Family::SmartFusion2> <Die::M2S010> <Package::144 TQ>
// Author: <Name>
//
///////////////////////////////////////////////////////////////////////////////////////////////////

//`timescale <time_units> / <precision>
`include "NBitCounter.v"

module NBitCounterChain #(
   parameter counterSize   = 16,
   parameter numOfCounters = 330
) (
   input  wire                   clk,
   input  wire                   reset,
   output wire [counterSize-1:0]  outCount
);
   wire [counterSize-1:0] counts[numOfCounters];
   wire terminalCounts[numOfCounters];

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
endmodule // NBitCounterChain
