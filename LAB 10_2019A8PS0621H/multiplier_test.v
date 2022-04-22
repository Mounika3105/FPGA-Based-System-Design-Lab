`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.10.2021 12:03:32
// Design Name: 
// Module Name: multiplier_test
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


module multiplier_test(

    );
    reg[1:0]A;
    reg[1:0]B;
    reg[1:0]C;
    reg[1:0]D;
    reg Clk;
    wire [4:0] S;
    multiple_wrapper m2(A,C,B,D,Clk,S);
    initial begin
    Clk=1'b0;
    repeat(200)
    #1 Clk=~Clk;
    $finish;
    end
    initial begin
    A=2'b11;
    B=2'b11;
    C=2'b10;
    D=2'b10;
    #10
    A=2'b11;
    B=2'b10;
    C=2'b01;
    D=2'b01;
    #10
    A=2'b11;
    B=2'b11;
    C=2'b11;
    D=2'b11;
    end
endmodule
