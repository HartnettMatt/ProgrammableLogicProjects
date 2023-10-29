///////////////////////////////////////////////////////////////////////////////////////////////////
// Company: <Name>
//
// File: NBitCounter.v
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

module NBitCounter #(
   parameter counterSize = 16
)(
   input  wire                  clk,
   input  wire                  reset,
   input  wire                  enable,
   output reg [counterSize-1:0] count,
   output wire                  terminalCount
);
   initial begin
      count = 0;
   end
   
   always @(posedge clk or posedge reset) begin
      if (reset)
         count <= 0;
      else if (enable)
         count <= (count + 1);
   end

   assign terminalCount = (count == (2**counterSize - 1));

endmodule
