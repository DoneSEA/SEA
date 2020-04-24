`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/14 16:31:23
// Design Name: 
// Module Name: TestBench
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


module TestBench();
    reg clk_100MHz=0;
    reg PPM=0;
    initial
        begin
            #100;
            PPM=1;
            #4000;
            PPM=0;
            #2000000;
            PPM=1;
            #1000;
            PPM=0;
            #1800000;
            PPM=1;
            #2000;
            PPM=0;
            #1950000;
            PPM=1;
            #4000;
            PPM=0;
            #2000000;
            PPM=1;
            #1000;
            PPM=0;
            #1800000;
            PPM=1;
            #2000;
            PPM=0;
            #1950000;
            PPM=1;
            #4000;
            PPM=0;
            #2000000;
            PPM=1;
            #1000;
            PPM=0;
            #18000000;
            PPM=1;
            #2000;
            PPM=0;
            #1950000;
            PPM=1;
            #4000;
            PPM=0;
            #2000000;
            PPM=1;
            #1000;
            PPM=0;
            #1800000;
            PPM=1;
            #2000;
            PPM=0;
            #1950000;
            PPM=1;
            #4000;
            PPM=0;
            #2000000;
            PPM=1;
            #1000;
            PPM=0;
            #1800000;
            PPM=1;
            #2000;
            PPM=0;
            #1950000;
            PPM=1;
        end
    always clk_100MHz=#10 ~clk_100MHz;

    //PPM
    Driver_PPM_Decoder Driver_PPM0(
        .clk_100MHz(clk_100MHz),
        .Rst(1'b1),
        .PPM(PPM)
    );
endmodule
