`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/03/22 14:26:45
// Design Name: 
// Module Name: Decoder_2_4
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


module Decoder_2_4(
    input E,
    input D0,
    input D1,
	output Q0,
	output Q1,
	output Q2,
	output Q3
	);
	
	//Data stream description
	assign Q0 = ~(~D0 & ~D1  & ~E); //Continuous assignment statement:assign
	assign Q1 = ~( D0 & ~D1  & ~E);
	assign Q2 = ~(~D0 &  D1  & ~E);
	assign Q3 = ~( D0 &  D1  & ~E);
	
endmodule
