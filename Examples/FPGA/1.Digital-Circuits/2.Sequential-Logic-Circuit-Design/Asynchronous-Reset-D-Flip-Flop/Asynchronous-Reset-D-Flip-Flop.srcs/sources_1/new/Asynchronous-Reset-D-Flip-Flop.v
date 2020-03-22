`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/03/22 14:47:35
// Design Name: 
// Module Name: Asynchronous_Reset_D_Flip_Flop
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


module Asynchronous_Reset_D_Flip_Flop(
    input clk,
    input reset,
    input d,
    output reg q,
    output reg qb
    );
   always@(posedge clk or negedge reset)
       begin 
            //If the reset signal is active low, it is immediately reset and is not affected by the clock signal.
            if(!reset) 
                begin 
                    q<=0; 
                    qb<=1; 
                end 
            //If the reset signal is high, the synchronous reset D flip-flop is identical to the function implemented by the basic D flip-flop.
            else 
                begin
                    q<=d; 
                    qb<=~d; 
                end 
       end  
endmodule
