`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/09/01 18:48:25
// Design Name: 
// Module Name: Driver_SK6805
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
//State definition
`define State_Division  2'h2            //Frequency division
`define State_Send_0    2'h0            //Send 0 code status
`define State_Send_1    2'h1            //Send 1 code status

//RGB driver, using SK6805 series RGB.
//The coding method is a rectangular wave signal with a frequency of 1.2 kHz, the 25% duty ratio is 0, and the 75% duty ratio is 1.
//RGB single channel has a total of 8 bits, and the transmission mode is G[7], G[6]...G[0], R[7], R[6]...R[0], B[7], B [6]...B[0], total 24bit
//The SK6805 series allows RGB cascading, four-bit pins, two of which are power supply pins, and two input and output pins. Multiple slices can be cascaded, and the upper output is connected to the next input.
//The cascading transmission mode continues to transmit the cascaded RGB data after a single transmission is completed.
//For example: three-level cascading, only need to send 24*3bit data to the first-level RGBLED, then the last 24*2bit data is forwarded to the second level after the first-level reception is completed, and the last 24-bit data is forwarded after the second-level reception Give the third level.
//After each round of communication is completed (the first stage receives all the level data), it needs to have a reset of 80us or more, that is, a low time. Then it will enter the data transmission of the next cycle.
//This driver has been packaged, just assign the RGB channel value, the hardware uses two-bit cascade, so there are only two RGB inputs (48bit).
module Driver_SK6805(
    input [7:0]R_In1,
    input [7:0]G_In1,
    input [7:0]B_In1,
    input [7:0]R_In2,
    input [7:0]G_In2,
    input [7:0]B_In2,
    input clk_10MHz,
    input Rst,
    output reg LED_IO
    );
    
    //The rectangular wave frequency is 1.2kHz, the clock is 10MHz, and it needs to be divided to 10kHz (minimum resolution frequency), and the transmission period is 12
    parameter Period_Send=12;
    parameter Division_Factor=1000;
    //RGB total number of bits sent
    parameter RGB_All_Bit=48;
    //0, 1 code high time
    parameter CODE_High_0=3;
    parameter CODE_High_1=9;
    
    
    reg [1:0]Send_State=0;  //Send state machine
    reg [9:0]Send_Cnt=0;    //Send count
    reg [8:0]Data_Cnt=0;    //Data bit count
    
    //Return current bit
    function [0:0]RGB_Bit;
        input [8:0]Cnt;
        input [7:0]R1;
        input [7:0]G1;
        input [7:0]B1;
        input [7:0]R2;
        input [7:0]G2;
        input [7:0]B2;
        
        begin
            if(Cnt<8)
                RGB_Bit=G1[7-Cnt];
            else if(Cnt<16)
                RGB_Bit=R1[15-Cnt];
            else if(Cnt<24)
                RGB_Bit=B1[23-Cnt];
            else if(Cnt<32)
                RGB_Bit=G2[31-Cnt];
            else if(Cnt<40)
                RGB_Bit=R2[39-Cnt];
            else if(Cnt<48)
                RGB_Bit=B2[47-Cnt];       
            else 
                RGB_Bit=0;
        end
    endfunction
    
    always@(posedge clk_10MHz or negedge Rst)
        begin
            //If entering the reset state
            if(!Rst)
                begin
                    Send_Cnt<=0;
                    Data_Cnt<=0;
                    Send_State<=0;
                    LED_IO<=1'b0;
                end
            else
                case(Send_State)
                    `State_Send_0:
                        begin
                            //If the transmission cycle is reached, jump to the next state
                            if(Send_Cnt==Period_Send-1)
                                begin
                                    //If the entire RGB data is sent, the frequency division state is entered and the data bits are cleared.
                                    if(Data_Cnt==RGB_All_Bit)
                                        begin
                                            Send_State<=`State_Division;
                                            Data_Cnt<=0;
                                        end
                                    //If the next RGB data bit is high, it enters the 1 state and the data bit is incremented by 1.
                                    else if(RGB_Bit(Data_Cnt,R_In1,G_In1,B_In1,R_In2,G_In2,B_In2))
                                        begin
                                            Send_State<=`State_Send_1;
                                            Data_Cnt<=Data_Cnt+1;
                                        end
                                    //If the next RGB data bit is low, it enters the 0 state, and the data bit is incremented by 1.
                                    else
                                        begin
                                            Send_State<=`State_Send_0;
                                            Data_Cnt<=Data_Cnt+1;
                                        end
                                    Send_Cnt<=0;
                                end
                            //Encoding, if the time is less than 0 code high time, it will always be pulled high
                            else if(Send_Cnt<CODE_High_0)
                                begin
                                    LED_IO<=1'b1;
                                    Send_Cnt<=Send_Cnt+1;
                                end
                            //Encode, 0 code low
                            else 
                                begin
                                    LED_IO<=1'b0;
                                    Send_Cnt<=Send_Cnt+1;
                                end
                        end
                    `State_Send_1:
                        begin
                            //If the transmission cycle is reached, jump to the next state
                            if(Send_Cnt==Period_Send-1)
                                begin
                                    //If the entire RGB data is sent, the frequency division state is entered and the data bits are cleared.
                                    if(Data_Cnt==RGB_All_Bit)
                                        begin
                                            Send_State<=`State_Division;
                                            Data_Cnt<=0;
                                        end
                                    //If the next RGB data bit is high, it enters the 1 state and the data bit is incremented by 1.
                                    else if(RGB_Bit(Data_Cnt,R_In1,G_In1,B_In1,R_In2,G_In2,B_In2))
                                        begin
                                            Send_State<=`State_Send_1;
                                            Data_Cnt<=Data_Cnt+1;
                                        end
                                    //If the next RGB data bit is low, it enters the 0 state, and the data bit is incremented by 1.
                                    else
                                        begin
                                            Send_State<=`State_Send_0;
                                            Data_Cnt<=Data_Cnt+1;
                                        end
                                    Send_Cnt<=0;
                                end
                            //Encoding, if the time is less than 1 code high time, it will always be pulled high
                            else if(Send_Cnt<CODE_High_1)
                                begin
                                    LED_IO<=1'b1;
                                    Send_Cnt<=Send_Cnt+1;
                                end
                            //Encoding, 1 code low
                            else 
                                begin
                                    LED_IO<=1'b0;
                                    Send_Cnt<=Send_Cnt+1;
                                end
                        end
                    `State_Division:
                        begin
                            //Perform the frequency division state, if the frequency division ends, judge the data high and low bits
                            if(Send_Cnt==Division_Factor)
                                begin
                                    //If the next RGB data bit is high, it enters the 1 state and the data bit is incremented by 1.
                                    if(RGB_Bit(Data_Cnt,R_In1,G_In1,B_In1,R_In2,G_In2,B_In2))
                                        begin
                                            Send_State<=`State_Send_1;
                                            Data_Cnt<=Data_Cnt+1;
                                        end
                                    //If the next RGB data bit is low, it enters the 0 state, and the data bit is incremented by 1.
                                    else
                                        begin
                                            Send_State<=`State_Send_0;
                                            Data_Cnt<=Data_Cnt+1;
                                        end
                                    Send_Cnt<=0;
                                end
                            else
                                begin
                                    Send_Cnt<=Send_Cnt+1;
                                    Data_Cnt<=0;
                                end
                            LED_IO<=1'b0;
                        end
                endcase
        end
endmodule
