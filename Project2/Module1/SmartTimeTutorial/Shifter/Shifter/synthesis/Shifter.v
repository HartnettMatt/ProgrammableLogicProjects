`timescale 1 ns/100 ps
// Version: v12.6 12.900.20.24


module Shifter(
       clk,
       reset,
       enable,
       Din,
       Qout
    );
input  clk;
input  reset;
input  enable;
input  Din;
output [15:0] Qout;

    wire [15:0] Q_Z;
    wire [3:0] count_Z;
    wire [15:0] Qout_c;
    wire ld_reg_Z, ld_reg7_Z, GND, VCC, enable_or_Z, ld_reg_or_Z, 
        \un1_count_1.CO1_Z , clk_c, reset_c, enable_c, Din_c, count, 
        count_0, count_1, count_2, clk_c_i, reset_c_i, clk_ibuf_Z;
    
    SLE \Qout_Z[9]  (.D(Q_Z[9]), .CLK(clk_c_i), .EN(ld_reg_or_Z), .ALn(
        VCC), .ADn(VCC), .SLn(reset_c_i), .SD(GND), .LAT(GND), .Q(
        Qout_c[9]));
    SLE \count[1]  (.D(count_1), .CLK(clk_c), .EN(VCC), .ALn(VCC), 
        .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(count_Z[1]));
    SLE \Q[11]  (.D(Q_Z[10]), .CLK(clk_c), .EN(enable_or_Z), .ALn(VCC), 
        .ADn(VCC), .SLn(reset_c_i), .SD(GND), .LAT(GND), .Q(Q_Z[11]));
    SLE \count[0]  (.D(count_2), .CLK(clk_c), .EN(VCC), .ALn(VCC), 
        .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(count_Z[0]));
    OUTBUF #( .IOSTD("") )  \Qout_obuf[6]  (.D(Qout_c[6]), .PAD(
        Qout[6]));
    INBUF #( .IOSTD("") )  enable_ibuf (.PAD(enable), .Y(enable_c));
    CFG3 #( .INIT(8'h14) )  \count_r[0]  (.A(reset_c), .B(enable_c), 
        .C(count_Z[0]), .Y(count_2));
    CLKINT clk_ibuf_RNIVTI2 (.A(clk_ibuf_Z), .Y(clk_c));
    SLE \Q[1]  (.D(Q_Z[0]), .CLK(clk_c), .EN(enable_or_Z), .ALn(VCC), 
        .ADn(VCC), .SLn(reset_c_i), .SD(GND), .LAT(GND), .Q(Q_Z[1]));
    OUTBUF #( .IOSTD("") )  \Qout_obuf[2]  (.D(Qout_c[2]), .PAD(
        Qout[2]));
    SLE \Q[5]  (.D(Q_Z[4]), .CLK(clk_c), .EN(enable_or_Z), .ALn(VCC), 
        .ADn(VCC), .SLn(reset_c_i), .SD(GND), .LAT(GND), .Q(Q_Z[5]));
    SLE \Qout_Z[11]  (.D(Q_Z[11]), .CLK(clk_c_i), .EN(ld_reg_or_Z), 
        .ALn(VCC), .ADn(VCC), .SLn(reset_c_i), .SD(GND), .LAT(GND), .Q(
        Qout_c[11]));
    SLE \Qout_Z[12]  (.D(Q_Z[12]), .CLK(clk_c_i), .EN(ld_reg_or_Z), 
        .ALn(VCC), .ADn(VCC), .SLn(reset_c_i), .SD(GND), .LAT(GND), .Q(
        Qout_c[12]));
    OUTBUF #( .IOSTD("") )  \Qout_obuf[10]  (.D(Qout_c[10]), .PAD(
        Qout[10]));
    SLE \Q[10]  (.D(Q_Z[9]), .CLK(clk_c), .EN(enable_or_Z), .ALn(VCC), 
        .ADn(VCC), .SLn(reset_c_i), .SD(GND), .LAT(GND), .Q(Q_Z[10]));
    SLE \Qout_Z[14]  (.D(Q_Z[14]), .CLK(clk_c_i), .EN(ld_reg_or_Z), 
        .ALn(VCC), .ADn(VCC), .SLn(reset_c_i), .SD(GND), .LAT(GND), .Q(
        Qout_c[14]));
    CFG3 #( .INIT(8'h06) )  \count_r[2]  (.A(count_Z[2]), .B(
        \un1_count_1.CO1_Z ), .C(reset_c), .Y(count_0));
    SLE \Qout_Z[0]  (.D(Q_Z[0]), .CLK(clk_c_i), .EN(ld_reg_or_Z), .ALn(
        VCC), .ADn(VCC), .SLn(reset_c_i), .SD(GND), .LAT(GND), .Q(
        Qout_c[0]));
    SLE \Qout_Z[5]  (.D(Q_Z[5]), .CLK(clk_c_i), .EN(ld_reg_or_Z), .ALn(
        VCC), .ADn(VCC), .SLn(reset_c_i), .SD(GND), .LAT(GND), .Q(
        Qout_c[5]));
    CFG2 #( .INIT(4'hE) )  ld_reg_or (.A(ld_reg_Z), .B(reset_c), .Y(
        ld_reg_or_Z));
    SLE \Q[0]  (.D(Din_c), .CLK(clk_c), .EN(enable_or_Z), .ALn(VCC), 
        .ADn(VCC), .SLn(reset_c_i), .SD(GND), .LAT(GND), .Q(Q_Z[0]));
    SLE \Q[7]  (.D(Q_Z[6]), .CLK(clk_c), .EN(enable_or_Z), .ALn(VCC), 
        .ADn(VCC), .SLn(reset_c_i), .SD(GND), .LAT(GND), .Q(Q_Z[7]));
    CFG2 #( .INIT(4'hE) )  enable_or (.A(enable_c), .B(reset_c), .Y(
        enable_or_Z));
    OUTBUF #( .IOSTD("") )  \Qout_obuf[11]  (.D(Qout_c[11]), .PAD(
        Qout[11]));
    SLE \Qout_Z[4]  (.D(Q_Z[4]), .CLK(clk_c_i), .EN(ld_reg_or_Z), .ALn(
        VCC), .ADn(VCC), .SLn(reset_c_i), .SD(GND), .LAT(GND), .Q(
        Qout_c[4]));
    OUTBUF #( .IOSTD("") )  \Qout_obuf[8]  (.D(Qout_c[8]), .PAD(
        Qout[8]));
    OUTBUF #( .IOSTD("") )  \Qout_obuf[9]  (.D(Qout_c[9]), .PAD(
        Qout[9]));
    SLE ld_reg (.D(ld_reg7_Z), .CLK(clk_c), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(ld_reg_Z));
    OUTBUF #( .IOSTD("") )  \Qout_obuf[12]  (.D(Qout_c[12]), .PAD(
        Qout[12]));
    SLE \count[2]  (.D(count_0), .CLK(clk_c), .EN(VCC), .ALn(VCC), 
        .ADn(VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(count_Z[2]));
    SLE \Q[3]  (.D(Q_Z[2]), .CLK(clk_c), .EN(enable_or_Z), .ALn(VCC), 
        .ADn(VCC), .SLn(reset_c_i), .SD(GND), .LAT(GND), .Q(Q_Z[3]));
    SLE \Qout_Z[2]  (.D(Q_Z[2]), .CLK(clk_c_i), .EN(ld_reg_or_Z), .ALn(
        VCC), .ADn(VCC), .SLn(reset_c_i), .SD(GND), .LAT(GND), .Q(
        Qout_c[2]));
    OUTBUF #( .IOSTD("") )  \Qout_obuf[0]  (.D(Qout_c[0]), .PAD(
        Qout[0]));
    SLE \Qout_Z[10]  (.D(Q_Z[10]), .CLK(clk_c_i), .EN(ld_reg_or_Z), 
        .ALn(VCC), .ADn(VCC), .SLn(reset_c_i), .SD(GND), .LAT(GND), .Q(
        Qout_c[10]));
    SLE \Q[6]  (.D(Q_Z[5]), .CLK(clk_c), .EN(enable_or_Z), .ALn(VCC), 
        .ADn(VCC), .SLn(reset_c_i), .SD(GND), .LAT(GND), .Q(Q_Z[6]));
    SLE \Q[9]  (.D(Q_Z[8]), .CLK(clk_c), .EN(enable_or_Z), .ALn(VCC), 
        .ADn(VCC), .SLn(reset_c_i), .SD(GND), .LAT(GND), .Q(Q_Z[9]));
    OUTBUF #( .IOSTD("") )  \Qout_obuf[3]  (.D(Qout_c[3]), .PAD(
        Qout[3]));
    CFG1 #( .INIT(2'h1) )  reset_ibuf_RNI8255 (.A(reset_c), .Y(
        reset_c_i));
    SLE \Q[14]  (.D(Q_Z[13]), .CLK(clk_c), .EN(enable_or_Z), .ALn(VCC), 
        .ADn(VCC), .SLn(reset_c_i), .SD(GND), .LAT(GND), .Q(Q_Z[14]));
    CFG1 #( .INIT(2'h1) )  clk_ibuf_RNIVTI2_0 (.A(clk_c), .Y(clk_c_i));
    CFG3 #( .INIT(8'h80) )  \un1_count_1.CO1  (.A(enable_c), .B(
        count_Z[1]), .C(count_Z[0]), .Y(\un1_count_1.CO1_Z ));
    SLE \Q[13]  (.D(Q_Z[12]), .CLK(clk_c), .EN(enable_or_Z), .ALn(VCC), 
        .ADn(VCC), .SLn(reset_c_i), .SD(GND), .LAT(GND), .Q(Q_Z[13]));
    SLE \Qout_Z[1]  (.D(Q_Z[1]), .CLK(clk_c_i), .EN(ld_reg_or_Z), .ALn(
        VCC), .ADn(VCC), .SLn(reset_c_i), .SD(GND), .LAT(GND), .Q(
        Qout_c[1]));
    SLE \Qout_Z[6]  (.D(Q_Z[6]), .CLK(clk_c_i), .EN(ld_reg_or_Z), .ALn(
        VCC), .ADn(VCC), .SLn(reset_c_i), .SD(GND), .LAT(GND), .Q(
        Qout_c[6]));
    OUTBUF #( .IOSTD("") )  \Qout_obuf[5]  (.D(Qout_c[5]), .PAD(
        Qout[5]));
    SLE \Q[2]  (.D(Q_Z[1]), .CLK(clk_c), .EN(enable_or_Z), .ALn(VCC), 
        .ADn(VCC), .SLn(reset_c_i), .SD(GND), .LAT(GND), .Q(Q_Z[2]));
    OUTBUF #( .IOSTD("") )  \Qout_obuf[15]  (.D(Qout_c[15]), .PAD(
        Qout[15]));
    SLE \count[3]  (.D(count), .CLK(clk_c), .EN(VCC), .ALn(VCC), .ADn(
        VCC), .SLn(VCC), .SD(GND), .LAT(GND), .Q(count_Z[3]));
    GND GND_Z (.Y(GND));
    VCC VCC_Z (.Y(VCC));
    OUTBUF #( .IOSTD("") )  \Qout_obuf[14]  (.D(Qout_c[14]), .PAD(
        Qout[14]));
    CFG4 #( .INIT(16'h1450) )  \count_r[1]  (.A(reset_c), .B(enable_c), 
        .C(count_Z[1]), .D(count_Z[0]), .Y(count_1));
    CFG4 #( .INIT(16'h0708) )  \count_r[3]  (.A(count_Z[2]), .B(
        \un1_count_1.CO1_Z ), .C(reset_c), .D(count_Z[3]), .Y(count));
    INBUF #( .IOSTD("") )  Din_ibuf (.PAD(Din), .Y(Din_c));
    SLE \Q[8]  (.D(Q_Z[7]), .CLK(clk_c), .EN(enable_or_Z), .ALn(VCC), 
        .ADn(VCC), .SLn(reset_c_i), .SD(GND), .LAT(GND), .Q(Q_Z[8]));
    INBUF #( .IOSTD("") )  reset_ibuf (.PAD(reset), .Y(reset_c));
    CFG4 #( .INIT(16'h8000) )  ld_reg7 (.A(count_Z[3]), .B(count_Z[2]), 
        .C(count_Z[1]), .D(count_Z[0]), .Y(ld_reg7_Z));
    SLE \Q[12]  (.D(Q_Z[11]), .CLK(clk_c), .EN(enable_or_Z), .ALn(VCC), 
        .ADn(VCC), .SLn(reset_c_i), .SD(GND), .LAT(GND), .Q(Q_Z[12]));
    OUTBUF #( .IOSTD("") )  \Qout_obuf[13]  (.D(Qout_c[13]), .PAD(
        Qout[13]));
    SLE \Qout_Z[7]  (.D(Q_Z[7]), .CLK(clk_c_i), .EN(ld_reg_or_Z), .ALn(
        VCC), .ADn(VCC), .SLn(reset_c_i), .SD(GND), .LAT(GND), .Q(
        Qout_c[7]));
    SLE \Q[15]  (.D(Q_Z[14]), .CLK(clk_c), .EN(enable_or_Z), .ALn(VCC), 
        .ADn(VCC), .SLn(reset_c_i), .SD(GND), .LAT(GND), .Q(Q_Z[15]));
    SLE \Q[4]  (.D(Q_Z[3]), .CLK(clk_c), .EN(enable_or_Z), .ALn(VCC), 
        .ADn(VCC), .SLn(reset_c_i), .SD(GND), .LAT(GND), .Q(Q_Z[4]));
    SLE \Qout_Z[3]  (.D(Q_Z[3]), .CLK(clk_c_i), .EN(ld_reg_or_Z), .ALn(
        VCC), .ADn(VCC), .SLn(reset_c_i), .SD(GND), .LAT(GND), .Q(
        Qout_c[3]));
    OUTBUF #( .IOSTD("") )  \Qout_obuf[7]  (.D(Qout_c[7]), .PAD(
        Qout[7]));
    OUTBUF #( .IOSTD("") )  \Qout_obuf[4]  (.D(Qout_c[4]), .PAD(
        Qout[4]));
    OUTBUF #( .IOSTD("") )  \Qout_obuf[1]  (.D(Qout_c[1]), .PAD(
        Qout[1]));
    INBUF #( .IOSTD("") )  clk_ibuf (.PAD(clk), .Y(clk_ibuf_Z));
    SLE \Qout_Z[15]  (.D(Q_Z[15]), .CLK(clk_c_i), .EN(ld_reg_or_Z), 
        .ALn(VCC), .ADn(VCC), .SLn(reset_c_i), .SD(GND), .LAT(GND), .Q(
        Qout_c[15]));
    SLE \Qout_Z[8]  (.D(Q_Z[8]), .CLK(clk_c_i), .EN(ld_reg_or_Z), .ALn(
        VCC), .ADn(VCC), .SLn(reset_c_i), .SD(GND), .LAT(GND), .Q(
        Qout_c[8]));
    SLE \Qout_Z[13]  (.D(Q_Z[13]), .CLK(clk_c_i), .EN(ld_reg_or_Z), 
        .ALn(VCC), .ADn(VCC), .SLn(reset_c_i), .SD(GND), .LAT(GND), .Q(
        Qout_c[13]));
    
endmodule
