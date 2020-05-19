`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/07/18 08:52:01
// Design Name: 
// Module Name: switch
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module switch(
    input clk,
    input [7:0] control,
	input clk_control,
//    output reg [1:0] led,
	input [11:0] data_0,
	input [11:0] data_1,
	input [11:0] data_2,
	input [11:0] data_3,
	output reg [11:0] data_out,
	input en,
	output reg en_0,
	output reg en_1,
	output reg en_2,
	output reg en_3,
	input [8:0] addr,
	output reg [8:0] addr_0,
	output reg [8:0] addr_1,
	output reg [8:0] addr_2,
	output reg [8:0] addr_3,
	output reg [8:0] freq
    );
//    assign freq = 9'd1;
/*
assign data_out = (control[7:6] == 2'd0)? data_0:((control[7:6] == 2'd1)?data_1:((control[7:6] == 2'd1)?data_2:data_3));
assign en_0 = (control[7:6] == 2'd0)?en:1'd0;
assign en_1 = (control[7:6] == 2'd1)?en:1'd0;
assign en_2 = (control[7:6] == 2'd2)?en:1'd0;
assign en_3 = (control[7:6] == 2'd3)?en:1'd0;
assign addr_0 = (control[7:6] == 2'd0)?addr:9'd0;
assign addr_1 = (control[7:6] == 2'd1)?addr:9'd0;
assign addr_2 = (control[7:6] == 2'd2)?addr:9'd0;
assign addr_3 = (control[7:6] == 2'd3)?addr:9'd0;
*/
/*
always@(posedge clk)
    case(control[7:6])
	    2'd0:begin
				data_out = data_0;
				en_0 = en;
				addr_0 = addr;
		    end
		2'd1:begin
		        data_out = data_1;
				en_1 = en;
				addr_1 = addr;
		    end
		2'd2:begin
		        data_out = data_2;
				en_2 = en;
				addr_2 = addr;
		    end
		2'd3:begin
		        data_out = data_3;
				en_3 = en;
				addr_3 = addr;
		    end
	endcase
*/

	reg [11:0] data;
always@(posedge clk_control)
    case(control[7:6])
	    2'd0:begin
				data = data_0;
				en_0 = en;
				addr_0 = addr;
		    end
		2'd1:begin
				data = data_1;
				en_1 = en;
				addr_1 = addr;
		    end
		2'd2:begin
				data = data_2;
				en_2 = en;
				addr_2 = addr;
		    end
		2'd3:begin
				data = data_3;
				en_3 = en;
				addr_3 = addr;
		    end
	endcase

always@(posedge clk_control)
    case(control[5:3])
	    3'd0:begin
		        data_out = data;
		    end
		3'd1:begin
		        data_out = (data >> 1);
		    end
		3'd2:begin
		        data_out = (data >> 2);
		    end
		3'd3:begin
		        data_out = (data >> 3);
		    end
		3'd4:begin
		        data_out = data;
		    end
		3'd5:begin
		        data_out = (data << 1);
		    end
		3'd6:begin
		        data_out = (data << 2);
		    end
		3'd7:begin
		        data_out = (data << 3);
		    end
	endcase

always@(posedge clk_control)
    case(control[1:0])
	    3'd0:begin
		        freq = 9'd1;
		    end
		3'd1:begin
		        freq = 9'd2;
		    end
		3'd2:begin
		        freq = 9'd4;
		    end
		3'd3:begin
		        freq = 9'd8;
		    end
		3'd4:begin
		        freq = 9'd16;
		    end
		3'd5:begin
		        freq = 9'd32;
		    end
		3'd6:begin
		        freq = 9'd64;
		    end
		3'd7:begin
		        freq = 9'd128;
		    end
	endcase

endmodule
