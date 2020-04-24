`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/01/11 17:13:53
// Design Name: 
// Module Name: SMG_Demo
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

//This is the routine of digital tube display
module SMG_Demo(
    input clk_100MHz,
    output reg [2:0]o_en=3'b110,
    output [3:0]o_bit,
    output [7:0]o_segment
    );
    
    wire clk_50MHz;
    
    //frequency divider
    clk_wiz_0 clk_2(.clk_out1(clk_50MHz),.clk_in1(clk_100MHz)); 
    
    //Digital tube-driven instantiation
    Driver_SMG Driver_SMG0(
        .i_clk_50MHz(clk_50MHz),          
        .i_rst(1),
        .i_data(16'h0001),
        .i_point(4'b1110),
        .o_bit(o_bit),
        .o_segement(o_segment)
        );
endmodule
