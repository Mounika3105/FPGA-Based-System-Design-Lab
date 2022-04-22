`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.09.2021 10:58:35
// Design Name: 
// Module Name: digital_lock
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


module digital_lock(
input mClk,
input Reset,
input B0,
input B1,
output correct,
output incorrect
 );
 wire Clk190;
 wire ClkFSM;
 wire B;
 assign B = B0 | B1;
 Clk_Div m1(mClk,Reset,Clk190);
 Debounce m2(Clk190,B,Reset,ClkFSM);
 Digital_Lock_FSM m3(ClkFSM,Reset,B1,correct,incorrect);
 
 
endmodule
