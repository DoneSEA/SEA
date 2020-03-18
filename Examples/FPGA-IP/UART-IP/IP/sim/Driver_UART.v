`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/10/23 18:36:53
// Design Name: 
// Module Name: Driver_UART
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

//This is the UART driver that contains the send and receive. 
//Where the transmission is enabled on the rising edge and the reception is enabled in the high level.
module Driver_UART(
    input clk_100MHz,
    input Rst,
    input En_Rx,
    input En_Tx,
    input [30:0]Baud_Rate,
    input Rx,
    input [7:0]Tx_Data,
    output Tx,
    output [7:0]Rx_Data,
    output Rx_ACK,
    output Tx_ACK
    );
    //UART clock
    wire clk_UART;
    wire [30:0]clk_mode;
    //Calculating the frequency division coefficient
    assign clk_mode='d100_000_000/Baud_Rate+1;
    //UART clock
    Clk_Division UART_Clk(
      .clk_100MHz(clk_100MHz),  // input wire clk_100MHz
      .clk_mode(clk_mode),      // input wire [30 : 0] clk_mode
      .clk_out(clk_UART)        // output wire clk_out
    );
    //Rx
    UART_Rx UART_Rx0(
        .clk_UART(clk_UART),//Clock signal
        .nRst(Rst),         //Reset signal, low reset
        .En(En_Rx),         //Enable signal, active high
        .Rx(Rx),            //Rx
        .Ack(Rx_ACK),       //Interrupt signal, whether it is received, rising edge means receiving
        .Data(Rx_Data)      //Receive data output
    );
    //Tx
    UART_Tx UART_Tx0(
        .clk_100MHz(clk_100MHz),//Trigger detection clock
        .clk_UART(clk_UART), //Clock signal
        .Rst(Rst),           //Reset signal, low reset
        .En(En_Tx),          //Enable signal, valid on rising edge
        .Data(Tx_Data),      //Receive data output
        .Ack(Tx_ACK),        //Interrupt signal, whether it is sent
        .Tx(Tx)              //Tx
    );
endmodule

//UART receiver module
module UART_Rx(
    input clk_UART,                         //Clock signal
    input nRst,                             //Reset signal, low reset
    input En,                               //Enable signal, active high
    input Rx,                               //Rx
    output Ack,                             //Interrupt signal, whether it is received
    output reg[7:0]Data                    //Receive data output
);
    //UART status parameter
    parameter RECEIVE_IDLE=2'd0;
    parameter RECEIVE=2'd1;
    parameter RECEIVE_END=2'd2;
    //Defining state variables
    reg[1:0]State_Current=0;
    reg[1:0]State_Next=0;
    //Defining the count variable, the data is 8 bits
    reg[2:0]Data_Cnt=0;
    //Reset signal
    wire Rst;
    //Reset signal connection
    assign Rst=nRst&En;
    //Interrupt signal, rising edge received
    assign Ack=(State_Current==RECEIVE_END);
    //state machine,Combinational logic
    always@(*)
        begin
            case(State_Current)
                RECEIVE_IDLE:if(!Rx)State_Next=RECEIVE;             //If Rx is pulled low, it enters the receiving state.
                RECEIVE:if(Data_Cnt==3'd7)State_Next=RECEIVE_END;   //If the data transfer is completed, it enters the end state, there is 1 stop bit,no check digit. 
                RECEIVE_END:State_Next=RECEIVE_IDLE;
                default:State_Next=RECEIVE_IDLE;
            endcase
        end
    //State transition
    always@(posedge clk_UART or negedge Rst)
        begin
            //Low level reset
            if(!Rst)
                State_Current<=RECEIVE_IDLE;
            else
                State_Current<=State_Next;
        end
    //Data read count
    always@(posedge clk_UART or negedge Rst)
        begin
            //Low level reset
            if(!Rst)
                Data_Cnt<=3'd0;
            else if(State_Current==RECEIVE)          
                Data_Cnt<=Data_Cnt+1;
            else
                Data_Cnt<=3'd0;      
        end
    //Data reading, starting from high position
    always@(posedge clk_UART or negedge Rst)
        begin
            //Low level reset
            if(!Rst)
                Data<=0;
            else if(State_Current==RECEIVE)
                Data<={Rx,Data[7:1]};
        end
endmodule

//UART transmit module
module UART_Tx(
    input clk_100MHz,                       //Detect clock for trigger detection
    input clk_UART,                         //Clock signal
    input Rst,                              //Reset signal, low reset
    input En,                               //Enable signal, valid on rising edge
    input[7:0]Data,                         //Receive data output
    output Ack,                             //Interrupt signal, whether it is sent
    output reg Tx
);
    //UART status parameter
    parameter SEND_IDLE=0;
    parameter SEND_START=1;
    parameter SEND=2;
    parameter SEND_END=3;
    parameter SEND_WAIT=4;
    //Defining state variables
    reg[2:0]State_Current=0;
    reg[2:0]State_Next=0;
    //Defining the count variable, the data is 8 bits
    reg[2:0]Data_Cnt=0;
    //Defining the send buffer Buffer
    reg[7:0]Send_Buffer=0;
    //Enable signal
    reg[1:0]En_Posedge_Check=0;         //Enable signal rising edge detection
    wire Tx_Enable;
    //Rising edge detection
    assign Tx_Enable=(~En_Posedge_Check[1])&En_Posedge_Check[0];
    //Interrupt signal
    assign Ack=(State_Current>=SEND_END)?1:0;
    //state machine,Combinational logic
    always@(*)
        begin
            State_Next=State_Current;
            case(State_Current)
                SEND_IDLE:if(Tx_Enable)State_Next=SEND_START;//如果接收完毕,则进入发送状态
                SEND_START:State_Next=SEND;
                SEND:if(Data_Cnt==7)State_Next=SEND_END;     //如果数据传输完毕,则进入结尾状态,无校验位,1位停止位
                SEND_END:State_Next=SEND_WAIT; 
                SEND_WAIT:if(Tx_Enable)State_Next=SEND_START;//发送结束回到等待状态
                default:State_Next=SEND_IDLE;
            endcase
        end
    //Enable signal rising edge detection
    always@(posedge clk_100MHz or negedge Rst)
        begin
            //Low level reset
            if(!Rst)
                En_Posedge_Check<=0;
            else
                En_Posedge_Check<={En_Posedge_Check[0],En};
        end
    //State transition
    always@(posedge clk_UART or negedge Rst)
        begin
            //Low level reset
            if(!Rst)
                State_Current<=SEND_IDLE;
            else
                State_Current<=State_Next;
        end
    //Data transmission count
    always@(posedge clk_UART or negedge Rst)
        begin
            //Low level reset
            if(!Rst)
                Data_Cnt<=0;
            else if(State_Current==SEND)          
                Data_Cnt<=Data_Cnt+1;
            else if(State_Current==SEND_END|State_Current==SEND_IDLE)
                Data_Cnt<=0;      
        end
    //Data send buffer
    always@(posedge clk_UART or negedge Rst)
        begin
            //Low level reset
            if(!Rst)
                Send_Buffer<=0;
            else if(State_Current==SEND_START)
                Send_Buffer<=Data;
            else if(State_Current==SEND)  
                Send_Buffer[6:0]<=Send_Buffer[7:1];
        end
    //Data transmission
    always@(posedge clk_UART or negedge Rst)
        begin
            //Low level reset
            if(!Rst)
                Tx<=1;
            else if(State_Current==SEND_START)
                Tx<=0;
            else if(State_Current==SEND)
                Tx<=Send_Buffer[0];
            else if(State_Current==SEND_END||State_Current==SEND_IDLE)
                Tx<=1;                
        end
endmodule