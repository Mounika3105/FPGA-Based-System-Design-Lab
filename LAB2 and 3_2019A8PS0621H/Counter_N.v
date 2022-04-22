`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.09.2021 13:25:44
// Design Name: 
// Module Name: Counter_N
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


module Counter_N(
    input Clk,
    input Reset,
    output reg [3:0] Count
    );
    always@(posedge Clk)
    begin
    if(Reset==0)
    Count=Count+1;
    else
    Count=0;
    end
endmodule
