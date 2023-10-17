
module hello_world_demo (
	clk_clk,
	key_external_connection_export,
	led_external_connection_export,
	reset_reset_n,
	switch_external_connection_export);	

	input		clk_clk;
	input	[1:0]	key_external_connection_export;
	output		led_external_connection_export;
	input		reset_reset_n;
	input		switch_external_connection_export;
endmodule
