	component SnakeGame is
		port (
			clk_clk                                 : in    std_logic                     := 'X';             -- clk
			reset_reset_n                           : in    std_logic                     := 'X';             -- reset_n
			chu_avalon_vga_0_vga_conduit_vsync      : out   std_logic;                                        -- vsync
			chu_avalon_vga_0_vga_conduit_hsync      : out   std_logic;                                        -- hsync
			chu_avalon_vga_0_vga_conduit_rgb        : out   std_logic_vector(11 downto 0);                    -- rgb
			chu_avalon_vga_0_sram_conduit_sram_addr : out   std_logic_vector(17 downto 0);                    -- sram_addr
			chu_avalon_vga_0_sram_conduit_sram_ce_n : out   std_logic;                                        -- sram_ce_n
			chu_avalon_vga_0_sram_conduit_sram_dq   : inout std_logic_vector(15 downto 0) := (others => 'X'); -- sram_dq
			chu_avalon_vga_0_sram_conduit_sram_lb_n : out   std_logic;                                        -- sram_lb_n
			chu_avalon_vga_0_sram_conduit_sram_oe_n : out   std_logic;                                        -- sram_oe_n
			chu_avalon_vga_0_sram_conduit_sram_ub_n : out   std_logic;                                        -- sram_ub_n
			chu_avalon_vga_0_sram_conduit_sram_we_n : out   std_logic                                         -- sram_we_n
		);
	end component SnakeGame;

	u0 : component SnakeGame
		port map (
			clk_clk                                 => CONNECTED_TO_clk_clk,                                 --                           clk.clk
			reset_reset_n                           => CONNECTED_TO_reset_reset_n,                           --                         reset.reset_n
			chu_avalon_vga_0_vga_conduit_vsync      => CONNECTED_TO_chu_avalon_vga_0_vga_conduit_vsync,      --  chu_avalon_vga_0_vga_conduit.vsync
			chu_avalon_vga_0_vga_conduit_hsync      => CONNECTED_TO_chu_avalon_vga_0_vga_conduit_hsync,      --                              .hsync
			chu_avalon_vga_0_vga_conduit_rgb        => CONNECTED_TO_chu_avalon_vga_0_vga_conduit_rgb,        --                              .rgb
			chu_avalon_vga_0_sram_conduit_sram_addr => CONNECTED_TO_chu_avalon_vga_0_sram_conduit_sram_addr, -- chu_avalon_vga_0_sram_conduit.sram_addr
			chu_avalon_vga_0_sram_conduit_sram_ce_n => CONNECTED_TO_chu_avalon_vga_0_sram_conduit_sram_ce_n, --                              .sram_ce_n
			chu_avalon_vga_0_sram_conduit_sram_dq   => CONNECTED_TO_chu_avalon_vga_0_sram_conduit_sram_dq,   --                              .sram_dq
			chu_avalon_vga_0_sram_conduit_sram_lb_n => CONNECTED_TO_chu_avalon_vga_0_sram_conduit_sram_lb_n, --                              .sram_lb_n
			chu_avalon_vga_0_sram_conduit_sram_oe_n => CONNECTED_TO_chu_avalon_vga_0_sram_conduit_sram_oe_n, --                              .sram_oe_n
			chu_avalon_vga_0_sram_conduit_sram_ub_n => CONNECTED_TO_chu_avalon_vga_0_sram_conduit_sram_ub_n, --                              .sram_ub_n
			chu_avalon_vga_0_sram_conduit_sram_we_n => CONNECTED_TO_chu_avalon_vga_0_sram_conduit_sram_we_n  --                              .sram_we_n
		);

