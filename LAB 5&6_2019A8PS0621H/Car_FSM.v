`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.09.2021 11:27:10
// Design Name: 
// Module Name: Car_FSM
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


module Car_FSM(
    input left,right,//for left and right lights
    input Clk,
    input Reset,
    output reg [5:0] out//light outputs 
    );
    //define present state and next state in the state diagram
    reg[2:0] next_state,present_state;
    //Use the keyword parameter for defining the state variables
    //these are choosen as a reference for defining present state, next state
   parameter S0=3'b000,
             S1=3'b001,
             S2=3'b010,
             S3=3'b011,
             S4=3'b100,
             S5=3'b101,
             S6=3'b110;
    //Impelmentation of FSM------------------------->State Register without clk_dividion
    reg [25:0] Clk_Div;
           always@(posedge Clk,posedge Reset)
           begin
           if(Reset==1)
           Clk_Div=0;
           else
           Clk_Div=Clk_Div+1;
           end
    always@(posedge Clk_Div[25], posedge Reset)
    begin
    if(Reset==1)
    present_state=3'b000;//Present State will be zero if the reset is high
    else
    present_state=next_state;
    end
    //Input and Output Logic.................................................................................
    //Input+Next state logic
    always@(present_state[2:0],left,right)
    begin
    case(present_state)
    S0:begin//From S0 the lights can go either in left and right direcion and they are mentioned below
       if(left==0 && right==0)
       next_state=S0;
       else if(left==1 && right!=1)
       next_state=S1;
       else if(right==1 && left!=1)
       next_state=S4;
       else
       next_state=S0;
       end
    S1:next_state=S2;
    S2:next_state=S3;
    S3:next_state=S0;
    S4:next_state=S5;
    S5:next_state=S6;
    S6:next_state=S0;
   default: next_state=S0;
    endcase
    end
    //Output Block implementation......................................................................
    always@(present_state[2:0],left,right)//Output also depends on the left and right
    begin
    case(present_state[2:0])
    S0:begin
       if(left==0 && right==0)
       out=6'b000000;
       else if(left==1 && right!=1)//left side light starts to glow
       out=6'b001000;
       else if(right==1 && left!=1)//right side light starts to glow
       out=6'b000100;
       else
       out=6'b000000;
       end
     S1:out=6'b011000;
     S2:out=6'b111000;
     S3:out=6'b000000;
     S4:out=6'b000110;
     S5:out=6'b000111;
     S6:out=6'b000000;
     default: out=6'b000000;
    endcase
    end
endmodule
