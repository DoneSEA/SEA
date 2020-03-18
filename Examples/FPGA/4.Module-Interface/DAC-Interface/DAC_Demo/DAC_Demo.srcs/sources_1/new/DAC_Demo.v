`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/10/12 14:26:43
// Design Name: 
// Module Name: DAC_Demo
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

//This is a sample experiment program for a DAC that selects the output waveform by pressing the button.
module DAC_Demo(
    input clk_100MHz,
    input [1:0]Key,
    output clk_DAC,
    output DAC_Din,
    output DAC_Sync
    );
   //Defining clock
   wire clk_100MHz_System;
   //Frequency divider
   clk_5_10 clk_division(.clk_out1(clk_DAC),.clk_out2(clk_100MHz_System),.clk_in1(clk_100MHz));
   //DAC driver instantiation
   Driver_DAC Driver_DAC0(
        .clk_100MHz(clk_100MHz_System),
        .clk_DAC(clk_DAC),
        .DAC_En(1),
        .Wave_Mode(Key),
        .Phase(180),
        .DAC_Din(DAC_Din),
        .DAC_Sync(DAC_Sync)
        );    
endmodule
