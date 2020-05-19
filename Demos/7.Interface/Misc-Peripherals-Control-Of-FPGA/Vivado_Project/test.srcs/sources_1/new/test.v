`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/05/28 15:12:44
// Design Name: 
// Module Name: test
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

module test(
input clk,
input  k1,
input  k2,
input  k3,
input  k4,
output reg io0,
output io1,
output io2,
output io3,
output io4,
output io5,
output io6,
output io7,
output io8,
output io9,
output io10,
output io11,
output io12,
output io13,
output led1,
output led2,
output reg fpga_rgb,
input dac_clk,
output reg adc_en,
output reg din,
output reg sync,
input [7:0] adc_date,
output IN1,
output IN4,
output SDA,
output SCL
    );
//////////////////////////////IO、SW、LED///////////////////////////////////////////////
//assign io0 = k1;
//assign io1 = k2;
//assign io2 = k1;
assign io3 = k2;
assign io4 = k1;
assign io5 = k2;
assign io6 = k1;
assign io7 = k2;
assign io8 = k1;
assign io9 = k2;
assign io10 = k1;
assign io11 = k2;
assign io12 = k1;
assign io13 = k2;
assign led1 = k3;
assign led2 = k4;
////////////////////////////三色灯////////////////////////////////////////////////////////
    reg [8:0] data_cnt = 0;
    reg [9:0] send_cnt = 0;
    reg [47:0] rgb_data = 48'hff0000ff0000;
	reg [1:0] cnt = 2'd0;
    
    reg [3:0] state = 0;
    always @(posedge clk)
    begin
        case(state)
        0:begin
            if(send_cnt == 11) begin
                if(data_cnt == 48) begin
                    state <= 2;
                    data_cnt <= 0;
                end else if(rgb_data[47 - data_cnt])begin
                    state <= 1;
                    data_cnt <= data_cnt + 1;
                end else begin
                    state <= 0;
                    data_cnt <= data_cnt + 1;
                end
                send_cnt <= 0;
            end else if(send_cnt < 3) begin
                fpga_rgb <= 1'b1;
                send_cnt <= send_cnt + 1;
            end else begin
                fpga_rgb <= 1'b0;
                send_cnt <= send_cnt + 1;
            end
        end
        1:begin
            if(send_cnt == 11) begin
                if(data_cnt == 48) begin
                    state <= 2;
                    data_cnt <= 0;
                end else if(rgb_data[47 - data_cnt])begin
                    state <= 1;
                    data_cnt <= data_cnt + 1;
                end else begin
                    state <= 0;
                    data_cnt <= data_cnt + 1;
                end
                send_cnt <= 0;
            end else if(send_cnt < 9) begin
                fpga_rgb <= 1'b1;
                send_cnt <= send_cnt + 1;
            end else begin
                fpga_rgb <= 1'b0;
                send_cnt <= send_cnt + 1;
            end
        end
        2:begin
            if(send_cnt == 1000) begin
                if(rgb_data[47 - data_cnt])
                    state <= 1;
                else
                    state <= 0;
                send_cnt <= 0;
                data_cnt <= data_cnt + 1;
            end else begin
                send_cnt <= send_cnt + 1;
                data_cnt <= 0;
            end
            fpga_rgb <= 0;
        end
        endcase
    end
	reg [23:0] cnt_n = 24'd0;
	always @(posedge clk)
	    if(cnt_n == 24'd10000000)begin
		    cnt_n <= 24'd0;
			cnt <= cnt + 2'd1;
		end else
		    cnt_n <= cnt_n + 24'd1;
	always @(posedge clk)
	begin
	    case(cnt)
		0:rgb_data <= 48'h0000ff0000ff;
		1:rgb_data <= 48'h00ff0000ff00;
		2:rgb_data <= 48'hff0000ff0000;
		3:rgb_data <= 48'hffffffffffff;
		default:rgb_data <= 48'hffffffffffff;
		endcase
	end
/////////////////////////////////产生模拟信号/////////////////////////////////////
reg [7:0] cnt_a = 8'd0;
always@(posedge clk)
    if(cnt_a <= 8'd63)begin
	    io0 <= 1'b0;
		cnt_a <= cnt_a + 8'd1;
	end else begin
	    io0 <= 1'b1;
		cnt_a <= cnt_a + 8'd1;
	end
/////////////////////////////////ADC////////////////////////////////////////////////
//assign adc_en = 1'b0;
//////////////////////////////////DAC//////////////////////////////////////////////
reg [4:0] dac_cnt = 5'd0;
always@(posedge clk)
    if(dac_cnt == 16)
	    dac_cnt <= 5'd0;
	else
	    dac_cnt <= dac_cnt + 5'd1;

always@(posedge clk)
    case(dac_cnt)
	    5'd0: begin 
		        din <= 1'b0;
			  end
		5'd1: din <= adc_date[7];
		5'd2: din <= adc_date[6];
		5'd3: din <= adc_date[5];
		5'd4: din <= adc_date[4];
		5'd5: din <= adc_date[3];
		5'd6: din <= adc_date[2];
		5'd7: din <= adc_date[1];
		5'd8: din <= adc_date[0];
		5'd9: din <= 1'b0;
		5'd10: din <= 1'b0;
		5'd11: din <= 1'b0;
		5'd12: din <= 1'b0;
		5'd13: din <= 1'b0;
		5'd14: din <= 1'b0;
		5'd15: begin
		        din <= 1'b0;
				sync <= 1'b1;
				adc_en <= 1'b0;
			   end
		5'd16: begin 
		        din <= 1'b0;
				sync <= 1'b0;
				adc_en <= 1'b1;
			   end
	endcase	
////////////////////////////模拟开关///////////////////////////////////////////////////////
assign IN1 = k1;
assign IN4 = k2;
assign SDA = k3;
assign SCL = k4;
assign io1 = ~k3;
assign io2 = ~k4;
endmodule
