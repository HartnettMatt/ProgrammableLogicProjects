	component ADC is
		port (
			clk_clk                              : in  std_logic                     := 'X'; -- clk
			modular_adc_0_response_valid         : out std_logic;                            -- valid
			modular_adc_0_response_startofpacket : out std_logic;                            -- startofpacket
			modular_adc_0_response_endofpacket   : out std_logic;                            -- endofpacket
			modular_adc_0_response_empty         : out std_logic_vector(0 downto 0);         -- empty
			modular_adc_0_response_channel       : out std_logic_vector(4 downto 0);         -- channel
			modular_adc_0_response_data          : out std_logic_vector(11 downto 0);        -- data
			reset_reset_n                        : in  std_logic                     := 'X'  -- reset_n
		);
	end component ADC;

	u0 : component ADC
		port map (
			clk_clk                              => CONNECTED_TO_clk_clk,                              --                    clk.clk
			modular_adc_0_response_valid         => CONNECTED_TO_modular_adc_0_response_valid,         -- modular_adc_0_response.valid
			modular_adc_0_response_startofpacket => CONNECTED_TO_modular_adc_0_response_startofpacket, --                       .startofpacket
			modular_adc_0_response_endofpacket   => CONNECTED_TO_modular_adc_0_response_endofpacket,   --                       .endofpacket
			modular_adc_0_response_empty         => CONNECTED_TO_modular_adc_0_response_empty,         --                       .empty
			modular_adc_0_response_channel       => CONNECTED_TO_modular_adc_0_response_channel,       --                       .channel
			modular_adc_0_response_data          => CONNECTED_TO_modular_adc_0_response_data,          --                       .data
			reset_reset_n                        => CONNECTED_TO_reset_reset_n                         --                  reset.reset_n
		);

