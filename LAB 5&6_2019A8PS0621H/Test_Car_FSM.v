`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.09.2021 19:21:26
// Design Name: 
// Module Name: Test_Car_FSM
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


module Test_Car_FSM(
    );
    reg left,right;
    reg Clk,Reset;
    wire [5:0] out;
    Car_FSM c1(left,right, Clk, Reset, out);
    //Generation of Clock
    initial begin
    Clk=1'b0;
    repeat(32)
    #5 Clk=~Clk;
    $finish;
    end
    //Generation of Reset
    initial begin
    Reset=1'b1;//Reset is set to 1
    #9
    Reset=1'b0;//Reset is set to 0
    end
    //Generation of Lights
    initial begin
    #40//For left side lights
    left=1;
    right=0;
    #30//For right side lights
    right=1;
    left=0;
    end
endmodule
