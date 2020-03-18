`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/10/12 15:37:01
// Design Name: 
// Module Name: DDS_Addr_Generator
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


module DDS_Addr_Generator(
    input clk_DDS,              //System clock
    input Rst,                  //Low level reset
    input [8:0]Phase,           //Phase
    output [7:0]Addr_Out        //Output address, corresponding to the data in the ROM
    );
    parameter NWORD=256;                    //Source data sampling accuracy
    parameter Freq=1000;                    //Goal 1k
    wire [7:0]PWORD = (Phase*NWORD)/360;     //Phase control word (x/360)*256
    wire clk_out;
    reg [7:0]Addr_Cnt=0; 
    reg [30:0]FWORD = 100000000/(Freq*256); 
   
    //Frequency divider
    Clk_Division Clk_Division_0 (
      .clk_100MHz(clk_DDS),  // input wire clk_100MHz
      .clk_mode(FWORD),      // input wire [30 : 0] clk_mode
      .clk_out(clk_out)      // output wire clk_out
    );
    //Count
    always @ (posedge clk_out or negedge Rst)
        begin
            if (!Rst)
                Addr_Cnt <= 0;  
            else
                Addr_Cnt <= Addr_Cnt + 1;   
        end 
   
    //Assign the upper eight bits of the accumulator's address to the output address (the address of the ROM)
    assign Addr_Out = Addr_Cnt + PWORD;
endmodule
