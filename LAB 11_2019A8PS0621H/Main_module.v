`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.10.2021 11:35:07
// Design Name: 
// Module Name: Main_module
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


module Main_module(
    input Clk,
    output [7:0] Sum1
    );
    wire [7:0] A;
    wire[7:0] B;
    wire Cin;
    wire[7:0] Sum;
    wire Cout;
    
    Adder_8 m1(A,B,Cin,Sum,Cout);
    vio_0 m2(Clk,Sum,Cout,A,B,Cin);
    
    assign Sum1=Sum;//To check the Sum part using LEDs
    
endmodule





