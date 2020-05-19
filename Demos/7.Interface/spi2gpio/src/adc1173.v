// tary, 15:28 2019/7/17
// under MIT License

module adc1173
(
	input        i_clk,
	input        i_rst_n,
	output [7:0] o_data,
	input  [7:0] i_adc_data,
	output       o_adc_clk
);
	localparam COUNTER_PERIOD = 50000 / 15000 + 1;	 /* 50MHz / 15MHz */
	localparam COUNTER_SZ = 2;

	/*
	 * debug only
	assign o_data = {launch, 1'b0, color_bits};
	 */

	wire clk_adc1173;
	milisec_clk #(
		.COUNTER_WIDTH  (COUNTER_SZ - 1),
		.COUNTER_PERIOD (COUNTER_PERIOD)
	) millisec (
		.clk            (i_clk),
		.rst_n          (i_rst_n),
		.clk_ms         (clk_adc1173)
	);
	assign o_adc_clk = clk_adc1173;

	reg adc_clk_l;
	reg fall_adc_clk;
	always @(posedge i_clk or negedge i_rst_n) begin
		if (!i_rst_n) begin
			adc_clk_l     <= 0;
			fall_adc_clk  <= 0;
		end else begin
			adc_clk_l     <= clk_adc1173;
			fall_adc_clk  <= adc_clk_l & ~clk_adc1173;
		end
	end

	reg [7:0] adc_val;
	always @(posedge i_clk or negedge i_rst_n) begin
		if (!i_rst_n) begin
			adc_val = 0;
		end else begin
			if (fall_adc_clk)
				adc_val = i_adc_data;
		end
	end
	assign o_data = adc_val;
endmodule

