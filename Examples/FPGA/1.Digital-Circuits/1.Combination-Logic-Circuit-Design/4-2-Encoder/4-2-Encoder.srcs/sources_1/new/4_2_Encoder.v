`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/10/09 15:03:25
// Design Name: 
// Module Name: 4-2-Encoder
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

//Four to two line encoder
module Encoder_4_2(
    input[3:0]d,                //Input signal, 4 lines
    output reg [1:0]q=2'bzz    //Output signal, 2 lines
    );
    //Combinational logic
    always@(d)
        begin 
            //Case() statement
            case(d) 
                4'b0111:q<=2'b11;
                4'b1011:q<=2'b10;
                4'b1101:q<=2'b01;
                4'b1110:q<=2'b00;
                default:q<=2'bzz;
            endcase 
        end 
endmodule
