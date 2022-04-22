`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.09.2021 11:57:06
// Design Name: 
// Module Name: mux_test
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


module mux_test(

    );
    reg A,B,C,D,S1,S0;
    wire Out;
    mux m1(A,B,C,D,S1,S0,Out);
    initial begin
    A=1'b0;
    B=1'b1;
    C=1'b1;
    D=1'b0;
    
    S1=1'b0;
    S0=1'b0;
    #10
    
    S1=1'b0;
    S0=1'b1;
     #10
     
    S1=1'b1;
    S0=1'b0;
     #10
    
    S1=1'b1;
    S0=1'b1;
     #10
    $finish;
    
    end
endmodule
