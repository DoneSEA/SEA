`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/14 15:24:42
// Design Name: 
// Module Name: Driver_PPM
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

//PPM driver, support 8 channels
module Driver_PPM_Decoder(
    input clk_100MHz,
    input Rst,
    input PPM,
    output [12:0]CH_0,
    output [12:0]CH_1,
    output [12:0]CH_2,
    output [12:0]CH_3,
    output [12:0]CH_4,
    output [12:0]CH_5,
    output [12:0]CH_6,
    output [12:0]CH_7
    );
    //parameter
    parameter PULSE_MIN=800;
    parameter PULSE_MAX=2200;
    parameter PULSE_ERROR=4400;
    //Capture output
    wire [31:0]Capture_Num;
    wire Capture_Ack;
    
    //register
    reg [103:0]CH_Reg=0;        //Channel data
    reg [3:0]CH_N=0;            //Channel number
    reg [12:0]Capture_Data=0;   //Capture data
    //Capture data
    always@(negedge Capture_Ack or negedge Rst)
        begin
            //Low-level reset
            if(!Rst)
                begin
                    Capture_Data<=0;
                    CH_N<=0;
                end
            else
                begin
                    Capture_Data<=Capture_Num[13:1];
                    
                    if(Capture_Num[13:0]>PULSE_ERROR)
                         CH_N<=8;
                    else if(Capture_Num[13:1]<PULSE_MAX&&Capture_Num[13:1]>PULSE_MIN)
                        begin
                            if(CH_N<8)
                                CH_N<=CH_N+1;
                            else
                                CH_N<=0;
                        end
                    else
                        CH_N<=CH_N+1;
                end
        end
    //Channel count
    always@(negedge clk_100MHz or negedge Rst)
        begin
            //Low-level reset
            if(!Rst)
                CH_Reg<=0;
            else
                begin
                    case(CH_N)
                        0:CH_Reg[12:0]<=Capture_Data;
                        1:CH_Reg[25:13]<=Capture_Data;
                        2:CH_Reg[38:26]<=Capture_Data;
                        3:CH_Reg[51:39]<=Capture_Data;
                        4:CH_Reg[64:52]<=Capture_Data;
                        5:CH_Reg[77:65]<=Capture_Data;
                        6:CH_Reg[90:78]<=Capture_Data;
                        7:CH_Reg[103:91]<=Capture_Data;
                        default:;
                    endcase        
                end
        end
    
    //Input capture
    Driver_Capture Capture_Pulse0(
        .clk_100MHz(clk_100MHz),      //Clock, 100MHz
        .Rst(1),                      //Reset signal, low level reset
        .Freq_Factor(50),             //Counting clock division factor
        .Triger_Mode(0),              //Trigger mode, 1 is rising edge trigger, 0 is falling edge trigger
        .Pulse(PPM),                  //Pulses to be captured
        .Pulse_Num(Capture_Num),      //Count output
        .Valid(Capture_Ack)           //Output valid flag, rising edge is valid
    );
    //Connect
    assign CH_0=CH_Reg[12:0];
    assign CH_1=CH_Reg[25:13];
    assign CH_2=CH_Reg[38:26];
    assign CH_3=CH_Reg[51:39];
    assign CH_4=CH_Reg[64:52];
    assign CH_5=CH_Reg[77:65];
    assign CH_6=CH_Reg[90:78];
    assign CH_7=CH_Reg[103:91];
endmodule
