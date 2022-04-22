`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.09.2021 13:08:50
// Design Name: 
// Module Name: Counter_N_100
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


module Counter_N_100(
    input Clk,
    input Reset,
    output reg [3:0] Count
    );
    reg[26:0]Count_Div;
    always@(posedge Clk)
    begin
    if(Reset==1)
    Count_Div=0;
    else
    Count_Div=Count_Div+1;
    end
    always@(posedge Count_Div[26])
    begin
        if(Reset==1)
        Count=0;
        else
        Count=Count+1;
        end
endmodule
