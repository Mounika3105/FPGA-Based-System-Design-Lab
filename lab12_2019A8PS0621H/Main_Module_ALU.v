`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.10.2021 12:24:19
// Design Name: 
// Module Name: Main_Module_ALU
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


module Main_Module_ALU(
    input Clk,
    output [7:0] LSB
    );
    wire [7:0] A;
    wire[7:0] B;
        wire [2:0] S;
        wire[7:0] Yh;
        wire [7:0]Yl;
    ALU a1(A,B,S,Yh,Yl);
    vio_1 a2(Clk,Yh,Yl,A,B,S);
    assign LSB=Yl;
endmodule
