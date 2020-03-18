`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/10/17 16:03:25
// Design Name: 
// Module Name: RGB_To_Gray
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

//RGB data to grayscale
module RGB_To_Gray(
    input [7:0]RGB_Data_R,              //Pixel data R
    input [7:0]RGB_Data_G,              //Pixel data G
    input [7:0]RGB_Data_B,              //Pixel data B
    input [4:0]Accuracy_Num,            //Grayscale precision digits
    output [7:0]Gray_Data               //Output grayscale data
    );
    //Temporary grayscale data
    reg [32:0]Out_Data=0;
    //Output grayscale data
    assign Gray_Data=Out_Data[7:0];
    //Gray value calculation
    always@(*)
        begin
            //Different precision digits, 0-20 digits
            case(Accuracy_Num)
                0:Out_Data=(RGB_Data_R*30+RGB_Data_B*11+RGB_Data_G*59+50)/100;
                1:Out_Data=(RGB_Data_R*30+RGB_Data_B*11+RGB_Data_G*59+50)/100;
                2:Out_Data=(RGB_Data_R*1+RGB_Data_B*1+RGB_Data_G*2)>>2;
                3:Out_Data=(RGB_Data_R*2+RGB_Data_B*1+RGB_Data_G*5)>>3;
                4:Out_Data=(RGB_Data_R*4+RGB_Data_B*2+RGB_Data_G*10)>>4;
                5:Out_Data=(RGB_Data_R*9+RGB_Data_B*4+RGB_Data_G*19)>>5;
                6:Out_Data=(RGB_Data_R*19+RGB_Data_B*8+RGB_Data_G*37)>>6;
                7:Out_Data=(RGB_Data_R*38+RGB_Data_B*15+RGB_Data_G*75)>>7;
                8:Out_Data=(RGB_Data_R*76+RGB_Data_B*30+RGB_Data_G*150)>>8;
                9:Out_Data=(RGB_Data_R*153+RGB_Data_B*59+RGB_Data_G*300)>>9;
                10:Out_Data=(RGB_Data_R*306+RGB_Data_B*117+RGB_Data_G*601)>>10;
                11:Out_Data=(RGB_Data_R*612+RGB_Data_B*234+RGB_Data_G*1202)>>11;
                12:Out_Data=(RGB_Data_R*1224+RGB_Data_B*467+RGB_Data_G*2405)>>12;
                13:Out_Data=(RGB_Data_R*2449+RGB_Data_B*934+RGB_Data_G*4809)>>13;
                14:Out_Data=(RGB_Data_R*4898+RGB_Data_B*1868+RGB_Data_G*9618)>>14;
                15:Out_Data=(RGB_Data_R*9797+RGB_Data_B*3736+RGB_Data_G*19235)>>15;
                16:Out_Data=(RGB_Data_R*19595+RGB_Data_B*7472+RGB_Data_G*38469)>>16;
                17:Out_Data=(RGB_Data_R*39190+RGB_Data_B*14943+RGB_Data_G*76939)>>17;
                18:Out_Data=(RGB_Data_R*78381+RGB_Data_B*29885+RGB_Data_G*153878)>>18;
                19:Out_Data=(RGB_Data_R*156762+RGB_Data_B*59769+RGB_Data_G*307757)>>19;
                default:Out_Data=(RGB_Data_R*313524+RGB_Data_B*119538+RGB_Data_G*615514)>>20;
            endcase
        end
endmodule
