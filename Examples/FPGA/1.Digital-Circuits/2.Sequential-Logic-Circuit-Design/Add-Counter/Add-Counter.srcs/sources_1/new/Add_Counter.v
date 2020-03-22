`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/03/22 14:51:40
// Design Name: 
// Module Name: Add_Counter
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


module Add_Counter(
    input clk,              //Input clock
    output reg [3:0]Q=0     //Output count result, auto reset to zero at 15
    );
    //Rising edge trigger
    always@(posedge clk)
        begin 
            Q<=Q+1 ; 
        end  
endmodule
