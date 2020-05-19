`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/10/05 11:56:45
// Design Name: 
// Module Name: add2
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


module add2(a, b, s, clk, rst_n);   

    input [15:0] a, b;
    input clk;
    input rst_n;
    output reg [16:0] s;

always @(posedge clk)   
begin   
    if(!rst_n)   
        begin   
            s <= 0;    
        end
    else
        begin
            s <= a + b;
        end
end   

endmodule
