// tary, 22:15 2015/10/11

module freq_div
#(
	parameter COUNTER_SIZE = 9,
	parameter DIVISOR = 50000000 / 115200
)
(
	input i_clk,
	input i_rst_n,
	output o_bps_clk
);
	localparam[COUNTER_SIZE-1:0] HALF_CNT = DIVISOR / 2 - 1;
	localparam[COUNTER_SIZE-1:0] FULL_CNT = DIVISOR - 1;
	reg[COUNTER_SIZE-1:0] counter;

	always @(posedge i_clk or negedge i_rst_n) begin
		if (!i_rst_n)
			counter <= 1'd0;
		else if (counter == FULL_CNT)
			counter <= 1'd0;
		else
			counter <= counter + 1'd1;
	end

	assign o_bps_clk = counter == HALF_CNT;
endmodule
