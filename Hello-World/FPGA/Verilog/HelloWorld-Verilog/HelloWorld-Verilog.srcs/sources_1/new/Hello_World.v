`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/03/23 12:15:31
// Design Name: 
// Module Name: Hello_World
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


module Hello_World(
    input signal_1,             //example:one bit input signal
    input [1:0]signal_2,        //example:two bits input signal
    output signal_3,            //example:one bit output signal
    output reg signal_4        //example:one bit Register-type signal
    //last signal,doesn't have the symbol ,
    );
    
    /*****************
    always@(*) assignment statement 
    it belongs to combinatorial logic
    ******************/
    always@(*)begin
        /**********
        your code,for example,signal_3=1;
        ***********/
    end
    
    /*****************
    always@(posedge xxxx)
    it belongs to sequential logic, which means valid on rising edge.
    ******************/
    always@(posedge signal_1)begin
    
    end
    
    /**************
    assign assignment statement
    it belongs to continuous assignment
    ***************/
    assign signal_3=signal_1;
    
endmodule
