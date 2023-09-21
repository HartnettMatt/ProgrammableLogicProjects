
module ADC (
	clk_clk,
	modular_adc_0_response_valid,
	modular_adc_0_response_startofpacket,
	modular_adc_0_response_endofpacket,
	modular_adc_0_response_empty,
	modular_adc_0_response_channel,
	modular_adc_0_response_data,
	reset_reset_n);	

	input		clk_clk;
	output		modular_adc_0_response_valid;
	output		modular_adc_0_response_startofpacket;
	output		modular_adc_0_response_endofpacket;
	output	[0:0]	modular_adc_0_response_empty;
	output	[4:0]	modular_adc_0_response_channel;
	output	[11:0]	modular_adc_0_response_data;
	input		reset_reset_n;
endmodule
