`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/09/01 18:46:56
// Design Name: 
// Module Name: LED_Task
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

//These are the definitions for LED_Task.
`define LED_Task_msecond_100  2'h0
`define LED_Task_msecond_200  2'h1
`define LED_Task_msecond_500  2'h2
`define LED_Task_second_1     2'h3

`define LED_1   0
`define LED_2   1

//Task for LED lighting.Many ways for choosing,as here shows.
module LED_Task(  
    input [1:0]Task_Num,
    input clk_100MHz,
    output LED_IO
    );
    
    wire LED_Clk;
    
    reg [30:0]Clk_Divide;
    reg LED_Out=0;
    
    always @(posedge clk_100MHz)
        begin
            case(Task_Num)
                `LED_Task_msecond_100:Clk_Divide<=10000000/2;
                `LED_Task_msecond_200:Clk_Divide<=20000000/2;
                `LED_Task_msecond_500:Clk_Divide<=50000000/2;
                `LED_Task_second_1:   Clk_Divide<=100000000/2;
                default:Clk_Divide<=1;
            endcase
        end
    Clk_Division Clk_Division1(.clk_100MHz(clk_100MHz),.clk_mode(Clk_Divide),.clk_out(LED_Clk));
    
    always @(posedge LED_Clk)
        begin
            LED_Out<=~ LED_Out;
        end
    
    assign LED_IO=LED_Out;
endmodule
