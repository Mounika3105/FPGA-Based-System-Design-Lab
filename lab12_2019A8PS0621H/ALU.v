`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.10.2021 12:16:50
// Design Name: 
// Module Name: ALU
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


module ALU(
    input [7:0] A,
    input [7:0] B,
    input [2:0] S,
    output reg [7:0] Yh,
    output reg [7:0] Yl
    );
    always@(*)
    case(S)
    3'b000:{Yh,Yl}= A+B;
    3'b001:{Yh,Yl}=A-B;
    3'b010:{Yh,Yl}=A*B;
    3'b011:Yl=A+1;
    3'b100:Yl=A<<B;
    3'b101:Yl=A&B;
    3'b110:Yl=A|B;
    3'b111:Yl=A^B;
    endcase
endmodule
