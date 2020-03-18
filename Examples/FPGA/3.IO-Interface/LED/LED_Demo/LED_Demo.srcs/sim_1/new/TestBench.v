`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/09/01 19:06:35
// Design Name: 
// Module Name: Test_Bench
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


module Test_Bench();
    reg clk_100MHz;
    LED_Demo test(
                .LED_tri_o(),
                .RGB_LED_tri_o(),
                .clk_100MHz(clk_100MHz));
    
    initial begin
        clk_100MHz = 0;
        forever begin
        #10 clk_100MHz=~clk_100MHz;
        end
    end
endmodule
