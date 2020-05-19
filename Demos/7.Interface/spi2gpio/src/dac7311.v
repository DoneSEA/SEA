// tary, 15:17 2019/7/10
// under MIT License

module dac7311
#(
	parameter CHAINS = 2, /* 2 bytes */
	parameter CHAIN_BITS = CHAINS * 8,
	parameter CHAIN_BITS_SZ = 4
)
(
	input i_clk,
	input i_rst_n,
	input i_wr_n,
	input       i_addr,
	input [7:0] i_data,
	output[7:0] o_data,
	output o_dac_sync_n,
	output o_dac_clk,
	output o_dac_data
);
	localparam COUNTER_PERIOD = 50000 / 12500;	 /* 50MHz / 12.5MHz */
	localparam COUNTER_SZ = 2;
	reg [CHAIN_BITS - 1:0] chains;

	reg [CHAINS - 1:0] data_r0;
	reg [CHAINS - 1:0] data_r1;
	reg [CHAINS - 1:0] data_r2;
	reg [CHAINS - 1:0] data_r3;
	reg [CHAINS - 1:0] data_r4;
	reg [CHAINS - 1:0] data_r5;
	reg [CHAINS - 1:0] data_r6;
	reg [CHAINS - 1:0] data_r7;
	assign o_data = {
			|data_r7, |data_r6, |data_r5, |data_r4,
			|data_r3, |data_r2, |data_r1, |data_r0
			};

	/*
	 * debug only
	assign o_data = {launch, 1'b0, chain_bits};
	 */

	genvar index;
	generate
	for (index = 0; index < CHAINS; index = index + 1) begin: chain_mux
		always @(posedge i_clk or negedge i_rst_n) begin
			if (!i_rst_n)
				chains[index * 8 + 7:index * 8 + 0] = 0;
			else if (index == i_addr && ~i_wr_n) begin
				chains[index * 8 + 7:index * 8 + 0] = i_data;
			end
		end

		/* data_r? mux */
		always @(*) begin
			{
			data_r7[index], data_r6[index], data_r5[index], data_r4[index],
			data_r3[index], data_r2[index], data_r1[index], data_r0[index]
			} = (index == i_addr)? chains[index * 8 + 7:index * 8 + 0]: 0;
		end
	end
	endgenerate

	/* MAX(XX) = 20.0 */
	wire clk_XXmhz_rev;
	/*
	 * clk_ms output with low level if rst_n = low (launch = 0)
	 * we want the clock signal maintain high level if launch = 0
	 */
	wire clk_XXmhz = ~clk_XXmhz_rev;
	reg launch;
	milisec_clk #(
		.COUNTER_WIDTH(COUNTER_SZ - 1),
		.COUNTER_PERIOD(COUNTER_PERIOD)
	) millisec (
		.clk    (i_clk),
		.rst_n  (launch),
		.clk_ms (clk_XXmhz_rev)
	);

	reg load_n;
	always @(posedge i_clk or negedge i_rst_n) begin
		if (!i_rst_n)
			load_n = 1;
		else begin
			load_n = i_wr_n | i_addr;
		end
	end

	/*
	 * The shifter shift out lower bits first,
	 * but dac7311 need sending higher bits first.
	 */
	wire [CHAIN_BITS - 1:0] chains_rev;
	generate
	for (index = 0; index < CHAIN_BITS; index = index + 1) begin: color_rev
		assign chains_rev[index] = chains[CHAIN_BITS - 1 - index];
	end
	endgenerate

	wire shift_en;
	wire [CHAIN_BITS - 1:0] sft_v;
	shifter #(
		.SIZE(CHAIN_BITS)
	) dac_shifter (
		.i_clk   (i_clk),
		.i_rst_n (i_rst_n),
		.i_en    (shift_en),
		.i_si    (0),
		.i_load_n(load_n),
		.i_load  (chains_rev),
		.o_do    (sft_v)
	);
	assign o_dac_data = sft_v[0];

	reg clk_XXmhz_l;
	reg rise_XXmhz;
	always @(posedge i_clk or negedge i_rst_n) begin
		if (!i_rst_n) begin
			clk_XXmhz_l <= 0;
			rise_XXmhz  <= 0;
		end else begin
			/* non-blocked or else rise_XXmhz always equal 0 */
			clk_XXmhz_l <= clk_XXmhz;
			rise_XXmhz  <= clk_XXmhz & ~clk_XXmhz_l;
		end
	end

	reg [CHAIN_BITS_SZ:0] sft_cnt;
	assign shift_en = (|sft_cnt) & rise_XXmhz;

	always @(posedge i_clk or negedge i_rst_n) begin
		if (!i_rst_n) begin
			launch  <= 0;
			sft_cnt <= 0;
		end else begin
			if (~load_n) begin
				launch  <= 1;
				sft_cnt <= 0;
			end else if (launch) begin
				if (sft_cnt == CHAIN_BITS + 1)
					launch <= 0;

				if (rise_XXmhz)
					sft_cnt <= sft_cnt + 1;
			end
		end
	end

	reg dac_sync_r;
	always @(posedge i_clk or negedge i_rst_n) begin
		if (!i_rst_n) begin
			dac_sync_r <= 1;
		end else begin
			dac_sync_r <= ~((|sft_cnt) & launch);
		end
	end
	assign o_dac_sync_n = dac_sync_r;

	/*
	 * dac_sync/dac_data delay to clk_XXmhz with 3 i_clk(s)
	 * so, dac_clk need 3 i_clk(s) delay
	 */
	reg [1:0] delayed_XXmhz;
	always @(posedge i_clk or negedge i_rst_n) begin
		if (!i_rst_n) begin
			delayed_XXmhz <= 0;
		end else begin
			delayed_XXmhz <= {delayed_XXmhz[0], clk_XXmhz_l};
		end
	end
	assign o_dac_clk  = delayed_XXmhz[1];
endmodule

