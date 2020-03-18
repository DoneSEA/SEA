`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/10/30 14:37:48
// Design Name: 
// Module Name: SPI_Demo
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


module SPI_Demo(
    input clk_100MHz,
    input MISO,
    output SCK,
    output MOSI,
    output CS,
    output reg SPI_EN=1
    );
    reg Busy=1;
    wire ACK;
    wire clk_En;
    Clk_Division En_Generator(
            .clk_100MHz(clk_100MHz),  // input wire clk_100MHz
            .clk_mode(1000000),      // input wire [30 : 0] clk_mode
            .clk_out(clk_En)        // output wire clk_out
        );
    //SPI master
    SPI_Master SPI_Master0(
        .clk_100MHz(clk_100MHz),
        .Rst(1),
        .En(clk_En),
        .Busy(Busy),
        .MISO(MISO),
        .Data(8'h43),
        .SCK(SCK),
        .MOSI(MOSI),
        .CS(CS),
        .ACK(ACK)
    );
endmodule
