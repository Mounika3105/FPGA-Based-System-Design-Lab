`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 29.09.2021 11:34:53
// Design Name: 
// Module Name: test_multiplier
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


module test_multiplier(

    );
    reg[1:0] A,B;
    reg Clk;
    wire[3:0] P;
    wire[1:0] Out_A,Out_B;
    multiplier_wrapper m1(A,B,Clk,Out_A,Out_B,P);
    initial begin
    Clk=0;
    repeat(200)
    #1Clk=~Clk;
    $finish;
    end
    initial begin
    A=2'b01;
    B=2'b11;
    #10 A=2'b11;
       B=2'b11;
     #10 A=2'b10;
         B=2'b01;
         end
        
endmodule
