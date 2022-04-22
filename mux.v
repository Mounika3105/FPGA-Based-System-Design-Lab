`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01.09.2021 11:40:53
// Design Name: 
// Module Name: mux
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


module mux(
    input A,
    input B,
    input C,
    input D,
    input S1,
    input S0,
    output reg Out
    );
    always@(A,B,C,D,S1,S0)
    begin
    case({S1,S0})
    2'b00: Out =A;
    2'b01: Out=B;
    2'b10: Out=C;
    2'b11: Out=D;
    endcase
    end
endmodule
