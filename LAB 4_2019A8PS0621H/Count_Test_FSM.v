`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2021 01:03:35
// Design Name: 
// Module Name: Count_Test_FSM
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


module Count_Test_FSM(

    );
    reg Clk,Reset,Count_up;
    wire[3:0] Count;
    CountFSM c1(Clk,Reset,Count_up,Count);
     //generating Clock
    initial begin
    Clk=1'b0;
    repeat(32)
    #5 Clk=~Clk;
    $finish;
    end
    //generating reset
    initial begin
    Reset=1'b0;
    #1 Reset=1'b1;
    #1 Reset=1'b0;
    end   
    //generating Count_up
    initial begin
    Count_up=1'b1;
    #8 Count_up=1'b0;
    #8 Count_up=1'b1;
    end 
endmodule
