`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09.09.2021 00:27:58
// Design Name: 
// Module Name: CountFSM
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


module CountFSM(
    input Clk,
    input Reset,
    input Count_up,
    output reg [3:0] Count
    );
    //define present state and next state in the state diagram
    reg [1:0] next_state,present_state;
    //Use the keyword "parameter" for defining state variables
    parameter S0=2'b00,S1=2'b01,S2=2'b10,S3=2'b11;
    //Implementation of FSM------------State Register with clk_div
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
    present_state=2'b00;
    else
    present_state=next_state;
    end
    //Input and Output Logic.....................>
    //Input Block implementation
    always@(Count_up,present_state)
    begin
    case(present_state)
    S0:begin
       if(Count_up==1)
          next_state=S1;
       else
          next_state=S3;
       end
    S1:begin
       if(Count_up==1)
          next_state=S2;
       else
          next_state=S0;
       end
    
    S2:begin
       if(Count_up==1)
          next_state=S3;
       else
          next_state=S1;
       end
    S3:begin
       if(Count_up==1)
          next_state=S0;
       else
          next_state=S2;
       end
    
    endcase
    end
    //Output Block................>Moore...........>depends on input only
    always@(present_state)
    begin
    case(present_state)
    S0:Count=4'b0000;
    S1:Count=4'b0010;
    S2:Count=4'b0100;
    S3:Count=4'b0110;
    default:Count=4'b0000;
    endcase
    end
    
    
    
endmodule
