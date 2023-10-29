
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
