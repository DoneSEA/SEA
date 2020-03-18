`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/10/18 16:32:37
// Design Name: 
// Module Name: Wave_Freq_Cal
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

//Waveform frequency calculation
module Freq_Cal(
    input clk_100MHz,
    input Rst,
    input [7:0]ADC_Data,
    input [7:0]F_Gate,
    output reg[20:0]Period=1
    );
    parameter Measure_Num=5;
    //Measurement signal
    wire Signal_Pulse=ADC_Data>F_Gate?1:0;      //Defining a pulse that exceeds the threshold of 1, otherwise 0
    //Measurement parameter
    reg [31:0]Measure_Cnt=0;                    //Measurement count
    reg [19:0]Measure_Num_Cnt=0;                //Pulse count
    reg [31:0]Measure_Delta_Cnt=0;              //Adjacent interval count
    reg Measure_Delta_Clear=0;                  //Adjacent measurement empty
    reg Delta_Clear_Flag=0;                     //Interval clear flag
    //Adjacent pulse interval count
    always@(posedge clk_100MHz or negedge Rst)
        begin
            //Low level reset
            if(!Rst)
                begin
                    Measure_Delta_Cnt<=0;
                    Delta_Clear_Flag<=0;
                end
            //If cleared
            else if(Measure_Delta_Clear)
                begin
                    Measure_Delta_Cnt<=0;
                    Delta_Clear_Flag<=1;
                end
            else
                begin
                    Measure_Delta_Cnt<=Measure_Delta_Cnt+1;
                    Delta_Clear_Flag<=0;
                end
        end
    //Pulse count
    always@(posedge Signal_Pulse or negedge Rst or posedge Delta_Clear_Flag)
        begin
            //Low level reset
            if(!Rst)
                begin
                    Measure_Num_Cnt<=0;
                    Measure_Delta_Clear<=0;
                    Measure_Cnt<=0;
                    Period<=0;
                end
            //Cleared if cleared
            else if(Delta_Clear_Flag)
                Measure_Delta_Clear<=0;
            else
                begin
                    if(Measure_Num_Cnt==Measure_Num-1)
                        begin
                            if(Measure_Cnt<200)
                                Period<=1;
                            else if(Measure_Cnt>1000000)
                                Period<=5000;
                            else
                                Period<=Measure_Cnt/200;
                            Measure_Num_Cnt<=0;
                            Measure_Delta_Clear<=1;
                            Measure_Cnt<=0; 
                        end
                    else
                        begin
                            Measure_Num_Cnt<=Measure_Num_Cnt+1;
                            Measure_Cnt<=Measure_Cnt+Measure_Delta_Cnt;
                        end
                end
        end
endmodule
