`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/09/06 09:59:39
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
   PWM_Demo test(
               .PWM(),
               .clk_100MHz(clk_100MHz));
   
   initial begin
       clk_100MHz = 0;
       forever begin
       #10 clk_100MHz=~clk_100MHz;
       end
   end
endmodule
