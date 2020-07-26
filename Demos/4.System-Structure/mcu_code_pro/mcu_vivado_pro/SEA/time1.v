`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/03/04 00:12:33
// Design Name: 
// Module Name: time1
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


module time1(
            clk,
            rst_n,
            clk_out
    );
input clk;
input rst_n;
output reg clk_out;
 
reg [14:0] cnt;
 
 
always @(posedge clk or negedge rst_n)
begin
    if(!rst_n)
    begin
        cnt <= 15'b0;
        clk_out <= 1'b0;
    end
    else
    begin
        if(cnt == 9999)
        begin
            clk_out <= ~clk_out;
            cnt <= 15'b0;
        end
        else
        begin
            cnt <= cnt + 15'b1;
        end
    end
end

endmodule
