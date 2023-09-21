`timescale 1 ps / 1 ps
`define USER_PINS

 
module  baseline (
        //Reset and Clocks
//        input           clk_ddr3_100_p,
        input           CLK_50_MAX10,    //2.5v    
        
    `ifdef USER_PINS
        output [4:0]    USER_LED,        //1.5v
        input  [4:0]    USER_DIPSW     //1.5v
    `endif


        ); 

endmodule
