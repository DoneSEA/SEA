`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/10/18 13:52:42
// Design Name: 
// Module Name: Wave_Generator
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


module Wave_Generator(
    input RGB_VDE,
    input [17:0]Offset,
    input [11:0]Set_X,
    input [11:0]Set_Y,
    input [7:0]ADC_Data_Out,
    output reg[17:0]Read_Addr,
    output reg[23:0]RGB_Data=0    //RBG
    );
    always@(*)
        begin
            Read_Addr=Set_X+Offset;
            if(Set_Y>=283&&Set_Y<797)
                if(Set_Y==ADC_Data_Out+284||Set_Y==ADC_Data_Out+283||Set_Y==ADC_Data_Out+285)
                    RGB_Data<=24'hff00ff;
                else
                    RGB_Data<=24'h000000;
            else
                RGB_Data<=24'h000000;
        end
endmodule
