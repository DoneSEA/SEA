// tary, 21:49 2015/9/28
module led_segment (
	clk, rst_n, led_pins, nr_0, nr_1, led_sel_n
);
	input clk;
	input rst_n;
	output [7:0] led_pins;
	input [7:0] nr_0;
	input [7:0] nr_1;
	output [1:0] led_sel_n;


	reg [1:0] led_sel;
	assign led_sel_n = ~led_sel;


	wire clk_ms;
	milisec_clk #(
		.COUNTER_WIDTH(15),
		.COUNTER_PERIOD(50000)
	) milisec (
		.clk(clk),
		.rst_n(rst_n),
		.clk_ms(clk_ms)
	);

	always @(posedge clk_ms or negedge rst_n) begin
		if (!rst_n)
			led_sel = 2'b01;
		else begin
			led_sel = {led_sel[0], led_sel[1]};
		end
	end

	reg [7:0] led_pins;
	always @(*) begin
		case (led_sel)
		1: led_pins = nr_0;
		2: led_pins = nr_1;
		default: led_pins = 8'b0;
		endcase
	end
endmodule
