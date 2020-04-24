`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/01/01 15:32:01
// Design Name: 
// Module Name: Clk_Division
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

//This is an example of an integer divider that includes odd and even crossovers.
module Clk_Division(
    input i_clk,
    input i_rst,
    input [30:0]i_clk_mode,
    output o_clk_out
    );
    
    reg clk=0;            //clock register
    reg flag=0;           //flag of cnt
    reg [30:0]freq_num=0; //num of the factor
    reg [30:0]cnt=0;      //count register of frequency divider
   
    //save the i_clk_mode
    always@(posedge i_clk or negedge i_rst)begin
        //low level reset
        if(!i_rst)begin
            freq_num<=0;
        end
        else begin
            freq_num<=i_clk_mode;
        end
    end
    //Half cycle flag update
    always@(negedge i_clk or negedge i_rst)begin
        //low level reset
        if(!i_rst)begin
            flag<=0;
        end
        else if(cnt==freq_num[30:1]&freq_num[0])begin
            flag<=1;
        end
        else begin
            flag<=0;
        end
    end
    
    //Frequency division count
    always @(posedge i_clk or negedge i_rst)begin
        //low level reset
        if(!i_rst)begin
            clk<=0;
        end
        else if(freq_num[0]&cnt==freq_num-1)begin
            cnt<=0;
            clk<=~clk;
        end
        else if(freq_num[0]&cnt==freq_num[30:1])begin
            cnt<=cnt+1;
            clk<=~clk;
        end
        else if(!freq_num[0]&cnt==freq_num[30:1]-1)begin
            cnt<=0;
            clk<=~clk;
        end
        else begin
            cnt<=cnt+1;
        end
    end
    
    //Frequency divided clock output
    assign o_clk_out=clk|flag;
endmodule
