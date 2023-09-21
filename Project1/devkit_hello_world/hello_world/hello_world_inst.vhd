	component hello_world is
		port (
			clk_clk                           : in  std_logic := 'X'; -- clk
			reset_reset_n                     : in  std_logic := 'X'; -- reset_n
			switch_external_connection_export : in  std_logic := 'X'; -- export
			led_external_connection_export    : out std_logic         -- export
		);
	end component hello_world;

	u0 : component hello_world
		port map (
			clk_clk                           => CONNECTED_TO_clk_clk,                           --                        clk.clk
			reset_reset_n                     => CONNECTED_TO_reset_reset_n,                     --                      reset.reset_n
			switch_external_connection_export => CONNECTED_TO_switch_external_connection_export, -- switch_external_connection.export
			led_external_connection_export    => CONNECTED_TO_led_external_connection_export     --    led_external_connection.export
		);

