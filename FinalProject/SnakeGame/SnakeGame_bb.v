
module SnakeGame (
	clk_clk,
	reset_reset_n,
	chu_avalon_vga_0_vga_conduit_vsync,
	chu_avalon_vga_0_vga_conduit_hsync,
	chu_avalon_vga_0_vga_conduit_rgb,
	chu_avalon_vga_0_sram_conduit_sram_addr,
	chu_avalon_vga_0_sram_conduit_sram_ce_n,
	chu_avalon_vga_0_sram_conduit_sram_dq,
	chu_avalon_vga_0_sram_conduit_sram_lb_n,
	chu_avalon_vga_0_sram_conduit_sram_oe_n,
	chu_avalon_vga_0_sram_conduit_sram_ub_n,
	chu_avalon_vga_0_sram_conduit_sram_we_n);	

	input		clk_clk;
	input		reset_reset_n;
	output		chu_avalon_vga_0_vga_conduit_vsync;
	output		chu_avalon_vga_0_vga_conduit_hsync;
	output	[11:0]	chu_avalon_vga_0_vga_conduit_rgb;
	output	[17:0]	chu_avalon_vga_0_sram_conduit_sram_addr;
	output		chu_avalon_vga_0_sram_conduit_sram_ce_n;
	inout	[15:0]	chu_avalon_vga_0_sram_conduit_sram_dq;
	output		chu_avalon_vga_0_sram_conduit_sram_lb_n;
	output		chu_avalon_vga_0_sram_conduit_sram_oe_n;
	output		chu_avalon_vga_0_sram_conduit_sram_ub_n;
	output		chu_avalon_vga_0_sram_conduit_sram_we_n;
endmodule
