`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.09.2021 12:40:07
// Design Name: 
// Module Name: Clk_Div
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


module Clk_Div(input mClk,input Reset,output Clk190);
       reg[18:0] Clk_Div1;
       always@(posedge mClk,posedge Reset)
       begin
       if(Reset==1)
       Clk_Div1=0;
       else
       Clk_Div1=Clk_Div1+1;
       end
       assign Clk190=Clk_Div1[18];
endmodule
