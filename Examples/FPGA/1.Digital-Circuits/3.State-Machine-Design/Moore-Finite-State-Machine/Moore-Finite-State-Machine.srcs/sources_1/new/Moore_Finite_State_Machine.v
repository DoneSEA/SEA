`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/03/22 14:55:18
// Design Name: 
// Module Name: Moore_Finite_State_Machine
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


module Moore_Finite_State_Machine(
    input clk,                      //Input clock           
    input Key1,                     //Key1, which represents 0 code
    input Key2,                     //Key 2, representing 1 yard
    output reg LED                 //LED output
    );
    //Defining state variables
    reg[4:0]State_Next=0;
    reg[4:0]State_Current=0;
    //The reset signal Rst is defined. 
    //When two buttons are pressed at the same time to perform a reset operation and are not pressed at the same time, the reset is released.
    wire Rst=Key1|Key2;
    //Defining combined signals
    wire All_Key=Key1&&Key2;
    //Define state, One Hot code
    parameter s0 = 5'b00000;
    parameter s1 = 5'b00001;
    parameter s2 = 5'b00010;
    parameter s3 = 5'b00100;
    parameter s4 = 5'b01000;
    parameter s5 = 5'b10000;    
    
    //First paragraph, state change
    always @ (posedge clk or negedge Rst)
        begin
            if (!Rst)
                State_Current <= s0;
            else
                State_Current <= State_Next;
        end
          
    //The second paragraph, state judgment
    always @ (negedge All_Key)
        begin
            if (!Rst)
                State_Next=s0;
            else
              case (State_Current)
                    s0:    State_Next = (!Key2)?s1:s0;
                    s1:    State_Next = (!Key1)?s2:s1;
                    s2:    State_Next = (!Key1)?s3:s1;
                    s3:    State_Next = (!Key2)?s4:s0;
                    s4:    State_Next = (!Key1)?s5:s1;
                    s5:    State_Next = s5; 
                    default:    State_Next = 5'bxxxxx;
              endcase
       end
    
    //The third paragraph, state processing
    always @ (Rst or State_Current)
        begin
            if(!Rst)
                LED <= 0;
            else
                case(State_Current)
                    s0:    LED <= 0;
                    s1:    LED <= 0;
                    s2:    LED <= 0;
                    s3:    LED <= 0;
                    s4:    LED <= 0;
                    s5:    LED <= 1;
                    default:   LED <= 0;
                endcase
        end     
endmodule
