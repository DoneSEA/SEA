// tary, 15:17 2019/7/10
// under MIT License

module sk6805
#(
	parameter COUNT = 2,
	parameter COLORS = COUNT * 3, /* RGB */
	parameter COLOR_BITS = COLORS * 8,
	parameter COLOR_BITS_SZ = 6
)
(
	input i_clk,
	input i_rst_n,
	input i_wr_n,
	input [2:0] i_addr,
	input [7:0] i_data,
	output[7:0] o_data,
	output o_sk
);
	localparam COUNTER_PERIOD = 50000000 / 781000;	 /* 50MHz / 800KHz */
	localparam COUNTER_SZ = 6;
	reg [COLOR_BITS - 1:0] colors;

	reg [COLORS - 1:0] data_r0;
	reg [COLORS - 1:0] data_r1;
	reg [COLORS - 1:0] data_r2;
	reg [COLORS - 1:0] data_r3;
	reg [COLORS - 1:0] data_r4;
	reg [COLORS - 1:0] data_r5;
	reg [COLORS - 1:0] data_r6;
	reg [COLORS - 1:0] data_r7;
	assign o_data = {
			|data_r7, |data_r6, |data_r5, |data_r4,
			|data_r3, |data_r2, |data_r1, |data_r0
			};

	/*
	 * debug only
	assign o_data = {launch, 1'b0, color_bits};
	 */

	genvar index;
	generate
	for (index = 0; index < COLORS; index = index + 1) begin: color_mux
		always @(posedge i_clk or negedge i_rst_n) begin
			if (!i_rst_n)
				colors[index * 8 + 7:index * 8 + 0] = 0;
			else if (index == i_addr && ~i_wr_n) begin
				colors[index * 8 + 7:index * 8 + 0] = i_data;
			end
		end

		/* data_r? mux */
		always @(*) begin
			{
			data_r7[index], data_r6[index], data_r5[index], data_r4[index],
			data_r3[index], data_r2[index], data_r1[index], data_r0[index]
			} = (index == i_addr)? colors[index * 8 + 7:index * 8 + 0]: 0;
		end
	end
	endgenerate

	wire clk_800khz;
	reg launch;
	milisec_clk #(
		.COUNTER_WIDTH(COUNTER_SZ - 1),
		.COUNTER_PERIOD(COUNTER_PERIOD)
	) millisec (
		.clk(i_clk),
		.rst_n(launch),
		.clk_ms(clk_800khz)
	);

	reg load_n;
	always @(posedge i_clk or negedge i_rst_n) begin
		if (!i_rst_n)
			load_n = 1;
		else begin
			load_n = i_wr_n;
		end
	end

	/*
	 * The shifter shift out lower bits first,
	 * but sk6805 need sending higher bits first.
	 */
	wire [COLOR_BITS - 1:0] colors_rev;
	generate
	for (index = 0; index < COLOR_BITS; index = index + 1) begin: color_rev
		assign colors_rev[index] = colors[COLOR_BITS - 1 - index];
	end
	endgenerate

	wire shift_en;
	wire [COLOR_BITS - 1:0] sft_v;
	shifter #(
		.SIZE(COLOR_BITS)
	) sk_shifter (
		.i_clk(i_clk),
		.i_rst_n(i_rst_n),
		.i_en(shift_en),
		.i_si(0),
		.i_load_n(load_n),
		.i_load(colors_rev),
		.o_do(sft_v)
	);
	/*
	 * debug only
	assign o_sk = clk_800khz;
	 */
	assign o_sk = sk_level;

	reg clk_800khz_l;
	reg fall_800khz;
	always @(posedge i_clk or negedge i_rst_n) begin
		if (!i_rst_n) begin
			clk_800khz_l <= 0;
			fall_800khz  <= 0;
		end else begin
			/* non-blocked or else fall_800khz always equal 0 */
			clk_800khz_l <= clk_800khz;
			fall_800khz  <= clk_800khz_l & ~clk_800khz;
		end
	end

	reg [COLOR_BITS_SZ - 1:0] color_bits;
	assign shift_en = (|color_bits) & fall_800khz;

	always @(posedge i_clk or negedge i_rst_n) begin
		if (!i_rst_n) begin
			launch <= 0;
			color_bits <= 0;
		end else begin
			if (~i_wr_n) begin
				launch <= 1;
				color_bits <= 0;
			end else if (launch) begin
				if (color_bits == COLOR_BITS)
					launch <= 0;

				if (fall_800khz)
					color_bits <= color_bits + 1;
			end
		end
	end

	/*
	 * bit continues less than 1.25us ( 1 / 800KHz )
	 */
	reg [COUNTER_SZ - 1:0] level_cnt;
	reg sk_level;
	always @(posedge i_clk or negedge i_rst_n) begin
		if (!i_rst_n) begin
			level_cnt <= 0;
			sk_level = 0;
		end else begin
			if (fall_800khz) begin
				level_cnt <= 0;
			end else if (level_cnt != COUNTER_PERIOD - 1)
				level_cnt <= level_cnt + 1;

			sk_level = 1;
			if (sft_v[0]) begin
				/* bit '1' high level 0.8 us */
				if (level_cnt >= 800 / 20)
					sk_level = 0;
			end else
				/* bit '0' high level 0.3 us */
				if (level_cnt >= 300 / 20)
					sk_level = 0;
		end
	end
endmodule

