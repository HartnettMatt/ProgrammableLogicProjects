module part1 (CLOCK_50, CLOCK2_50, KEY, FPGA_I2C_SCLK, FPGA_I2C_SDAT, AUD_XCK, 
		        AUD_DACLRCK, AUD_ADCLRCK, AUD_BCLK, AUD_ADCDAT, AUD_DACDAT);

	input CLOCK_50, CLOCK2_50;
	input [0:0] KEY;
	// I2C Audio/Video config interface
	output FPGA_I2C_SCLK;
	inout FPGA_I2C_SDAT;
	// Audio CODEC
	output AUD_XCK;
	input AUD_DACLRCK, AUD_ADCLRCK, AUD_BCLK;
	input AUD_ADCDAT;
	output AUD_DACDAT;
	
	// Local wires.
	wire read_ready, write_ready, read, write;
	wire [23:0] readdata_left, readdata_right;
	wire [23:0] writedata_left, writedata_right;
	wire reset = ~KEY[0];

	/////////////////////////////////
	// Your code goes here 
	/////////////////////////////////
	
	reg [23:0] filtered_left, filtered_right;
	reg [23:0] shift_register_left [0:7];
	reg [23:0] shift_register_right [0:7];
	
	always @(posedge CLOCK_50 or posedge reset) begin
		if (reset) begin
	      sum_counter <= 3'b0;
			shift_register_left[0] <= 24'b0;
			shift_register_left[1] <= 24'b0;
			shift_register_left[2] <= 24'b0;
			shift_register_left[3] <= 24'b0;
			shift_register_left[4] <= 24'b0;
			shift_register_left[5] <= 24'b0;
			shift_register_left[6] <= 24'b0;
			shift_register_left[7] <= 24'b0;
    end else begin
			shift_register_left[0] <= readdata_left;
			shift_register_left[1] <= shift_register_left[0];
			shift_register_left[2] <= shift_register_left[1];
			shift_register_left[3] <= shift_register_left[2];
			shift_register_left[4] <= shift_register_left[3];
			shift_register_left[5] <= shift_register_left[4];
			shift_register_left[6] <= shift_register_left[5];
			shift_register_left[7] <= shift_register_left[6];
      end
      filtered_left <= (shift_register_left[0] >> 3) +
                    (shift_register_left[1] >> 3) +
                    (shift_register_left[2] >> 3) +
                    (shift_register_left[3] >> 3) +
                    (shift_register_left[4] >> 3) +
                    (shift_register_left[5] >> 3) +
                    (shift_register_left[6] >> 3) +
                    (shift_register_left[7] >> 3);
    end


  always @(posedge CLOCK_50 or posedge reset) begin
    if (reset) begin
      shift_register_right[0] <= 24'b0;
      shift_register_right[1] <= 24'b0;
      shift_register_right[2] <= 24'b0;
      shift_register_right[3] <= 24'b0;
      shift_register_right[4] <= 24'b0;
      shift_register_right[5] <= 24'b0;
      shift_register_right[6] <= 24'b0;
      shift_register_right[7] <= 24'b0;
    end else begin
      shift_register_right[0] <= readdata_right;
      shift_register_right[1] <= shift_register_right[0];
      shift_register_right[2] <= shift_register_right[1];
      shift_register_right[3] <= shift_register_right[2];
      shift_register_right[4] <= shift_register_right[3];
      shift_register_right[5] <= shift_register_right[4];
      shift_register_right[6] <= shift_register_right[5];
      shift_register_right[7] <= shift_register_right[6];
    end

    filtered_right <= (shift_register_right[0] >> 3) +
                     (shift_register_right[1] >> 3) +
                     (shift_register_right[2] >> 3) +
                     (shift_register_right[3] >> 3) +
                     (shift_register_right[4] >> 3) +
                     (shift_register_right[5] >> 3) +
                     (shift_register_right[6] >> 3) +
                     (shift_register_right[7] >> 3);
   end
  
	assign writedata_left = filtered_left;   
	assign writedata_right = filtered_right; 
	assign read = read_ready & write_ready;   
	assign write = read_ready & write_ready;  
	
/////////////////////////////////////////////////////////////////////////////////
// Audio CODEC interface. 
//
// The interface consists of the following wires:
// read_ready, write_ready - CODEC ready for read/write operation 
// readdata_left, readdata_right - left and right channel data from the CODEC
// read - send data from the CODEC (both channels)
// writedata_left, writedata_right - left and right channel data to the CODEC
// write - send data to the CODEC (both channels)
// AUD_* - should connect to top-level entity I/O of the same name.
//         These signals go directly to the Audio CODEC
// I2C_* - should connect to top-level entity I/O of the same name.
//         These signals go directly to the Audio/Video Config module
/////////////////////////////////////////////////////////////////////////////////
	clock_generator my_clock_gen(
		// inputs
		CLOCK2_50,
		reset,

		// outputs
		AUD_XCK
	);

	audio_and_video_config cfg(
		// Inputs
		CLOCK_50,
		reset,

		// Bidirectionals
		FPGA_I2C_SDAT,
		FPGA_I2C_SCLK
	);

	audio_codec codec(
		// Inputs
		CLOCK_50,
		reset,

		read,	write,
		writedata_left, writedata_right,

		AUD_ADCDAT,

		// Bidirectionals
		AUD_BCLK,
		AUD_ADCLRCK,
		AUD_DACLRCK,

		// Outputs
		read_ready, write_ready,
		readdata_left, readdata_right,
		AUD_DACDAT
	);

endmodule


