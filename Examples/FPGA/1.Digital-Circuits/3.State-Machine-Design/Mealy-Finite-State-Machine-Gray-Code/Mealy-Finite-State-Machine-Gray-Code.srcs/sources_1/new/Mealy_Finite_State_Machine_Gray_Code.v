`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/03/22 14:59:15
// Design Name: 
// Module Name: Mealy_Finite_State_Machine_Gray_Code
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


module Mealy_Finite_State_Machine_Gray_Code(
    input a,
    input reset,
    input clock,
    output reg g,
    output reg f
    );
    parameter start=2'b00;
    parameter stop =2'b01;
    parameter clear=2'b10;   
    parameter idle =2'b11;
    
    reg[1:0] state;
    
    always@(posedge clock)
        begin 
            if(!reset)  
                begin  
                    state<=idle;  
                    f<=0;  
                    g<=0;  
                end 
            else   
                begin  
                    case(state)   
                    start:
                        if(!a)     
                            state<=stop;    
                        else    
                            state<=start;  
                    stop :
                        if(a)  
                            begin  
                                state<=clear;  
                                f<=1;      
                            end    
                        else    
                            state<=stop;
                    clear:
                        if(!a)  
                            begin 
                                state<=idle;
                                f<=0;  
                                g<=1; 
                            end   
                        else   
                            state<=clear;  
                    idle :
                        if(a)
                            begin
                                state<=start; 
                                g<=0;     
                            end     
                        else     
                            state<=idle;  
                    endcase 
                end 
        end 
endmodule