`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03.09.2021 13:28:41
// Design Name: 
// Module Name: Counter_N_Test
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


module Counter_N_Test(

    );
    reg Clk;
    reg Reset;
    wire [3:0] Count;
    Counter_N c1(Clk,Reset,Count);
    initial begin
    Reset=0;
    #1 Reset=1;
    #2 Reset=0;
    end
    initial begin
     Clk=0;
     repeat(32)
     #5 Clk= ~Clk;
     $finish;
        end
endmodule
