`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/03/22 14:37:01
// Design Name: 
// Module Name: Basic_D_Flip_Flop
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


module Basic_D_Flip_Flop(
    input clk,                  //Input clock
    input d,                    //Input data
    output reg q=0,            //Output
    output reg qb=1            //Inverted output
    );
    //Timing logic: posedge is a rising edge trigger, and negedge is a falling edge trigger
    always@(posedge clk)
        begin
         //Signal assignment
         //<= means assigning the value after the entire statement has been executed
         //instead of assigning it immediately.
            q<=d;              
            qb<=~d;
        end
endmodule

