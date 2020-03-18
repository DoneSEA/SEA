`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/10/17 17:18:42
// Design Name: 
// Module Name: Delay_Signal
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

//Signal delay
module Delay_Signal(
    input clk_Signal,               //Signal unit clock
    input Rst,                      //Reset signal, low reset
    input Signal_In,                //Delayed input signal
    input [2:0]Delay_Num,           //The number of clocks that need to be delayed, no more than 8, can be cascaded
    output Delay_Signal             //Signal output after delay
    );
    //Signal buffer
    reg[7:0]Signal_Buffer=0;
    //Shift assignment
    assign Delay_Signal=Signal_Buffer[Delay_Num];
    //Signal shift
    always@(posedge clk_Signal or negedge Rst)
        begin
            //Low level reset
            if(!Rst)
                Signal_Buffer<=0;
            else
                begin
                    //Signal shift
                    Signal_Buffer<={Signal_Buffer[6:0],Signal_In};                        
                end
        end
endmodule