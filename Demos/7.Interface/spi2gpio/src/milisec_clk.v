// tary, 17:09 2011/10/7
module milisec_clk
#(
	parameter COUNTER_WIDTH = 7,
	parameter COUNTER_PERIOD = 2 ** (COUNTER_WIDTH + 1)
)
(
	input clk,
	input rst_n,
	output clk_ms
);
	reg clk_ms_r;
	reg [COUNTER_WIDTH - 1:0] cnt_1_milisec;
	localparam [COUNTER_WIDTH - 1:0] COUNTER_MAX = COUNTER_PERIOD / 2 - 1'd1;

	always @(posedge clk or negedge rst_n) begin
		if (!rst_n)
			cnt_1_milisec = COUNTER_MAX;
		else if(cnt_1_milisec == 0)
			cnt_1_milisec = COUNTER_MAX;
		else
			cnt_1_milisec = cnt_1_milisec - 1'd1;
	end

	assign clk_ms = clk_ms_r;

	always @(posedge clk or negedge rst_n) begin
		if (!rst_n)
			clk_ms_r = 0;
		else if (cnt_1_milisec == 0)
			clk_ms_r = ~clk_ms_r;
	end
endmodule
