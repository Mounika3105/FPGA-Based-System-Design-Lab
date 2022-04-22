`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.09.2021 14:30:56
// Design Name: 
// Module Name: Digital_Lock_Test
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


module Digital_Lock_Test(

    );
    reg mClk,Reset,B0,B1;
    wire correct,incorrect;
    digital_lock t1(mClk, Reset,B0,B1, correct, incorrect);
    initial begin
    Reset=1'b1;
    #9
    Reset=1'b0;
    end
    initial begin
    mClk=1'b0;
    repeat(32)
    #5
    mClk=~mClk;
    $finish;
    end
    initial begin
    #40
    B0=0;
    B1=1;
    #30
    B0=1;
    B1=0;
    end
endmodule
