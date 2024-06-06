`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/18 13:35:34
// Design Name: 
// Module Name: d_ff
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


module d_ff(
    Q, QBAR, D, en, clk, rstn
    );
    output Q, QBAR;
    input D, en, clk, rstn;
    reg Q;
    always @(posedge clk)
        if(!rstn) Q <= 1'b0;
        else if(en) Q <= D;
        
    assign QBAR = ~Q;
endmodule
