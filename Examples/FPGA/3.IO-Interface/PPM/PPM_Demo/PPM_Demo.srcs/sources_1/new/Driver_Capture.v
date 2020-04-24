`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/16 16:03:18
// Design Name: 
// Module Name: Driver_Capture
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

//Input capture driver
module Driver_Capture(
    input clk_100MHz,               //Clock, 100MHz
    input Rst,                      //Reset signal, low level reset
    input [30:0]Freq_Factor,        //Counting clock division factor
    input Triger_Mode,              //Trigger mode, 1 is rising edge trigger, 0 is falling edge trigger
    input Pulse,                    //Pulses to be captured
    output reg[31:0]Pulse_Num=0,   //Count output
    output reg Valid=0             //Output valid flag, rising edge is valid
    );
    
    //Status parameter
    localparam State_IDLE=0;
    localparam State_START=1;
    localparam State_END=2;
    //Capture signal
    wire clk_capture;                       //Capture clock
    wire Signal=Triger_Mode?Pulse:~Pulse;   //Signals to be captured
    reg [31:0]Pulse_Cnt=0;                  //Pulse counter
    reg [1:0]Current_State=0;               //Capture state machine
    wire Clear_Flag=Current_State==State_IDLE;//Clear count flag
    //state machine
    always@(posedge clk_100MHz or negedge Rst)
        begin
            //Low-level reset
            if(!Rst)
                begin
                    Valid<=0;
                    Current_State<=State_IDLE;
                end
            else
                case(Current_State)
                    //Wait for trigger
                    State_IDLE:
                        begin
                            if(Signal)Current_State<=State_START;
                            else Current_State<=State_IDLE;
                            Valid<=1;
                        end
                    //Start counting and wait for the trigger to finish
                    State_START:
                        begin
                            if(!Signal)Current_State<=State_END;
                            else Current_State<=State_START;
                            Valid<=0;
                        end
                    //Wait for triggering again and end counting
                    State_END:
                        begin
                            if(Signal)
                                begin
                                    Current_State<=State_IDLE;
                                    Valid<=1;
                                    Pulse_Num<=Pulse_Cnt;
                                end
                            else 
                                begin
                                    Current_State<=State_END;
                                    Valid<=0;
                                end
                        end
                    default:begin Current_State<=State_IDLE;Valid<=0;end
                endcase
        end
    //Capture count
    always@(posedge clk_capture or posedge Clear_Flag or negedge Rst)
        begin
            //Low-level reset
            if(!Rst)
                Pulse_Cnt<=0;
            else if(Clear_Flag)
                Pulse_Cnt<=0;
            else
                Pulse_Cnt<=Pulse_Cnt+1;
        end
    //Divider instantiation
    Clk_Division Clk_Division_1MHz (
      .clk_100MHz(clk_100MHz),      // input wire clk_100MHz
      .clk_mode(Freq_Factor),       // input wire [30 : 0] clk_mode
      .clk_out(clk_capture)         // output wire clk_out
    );
endmodule