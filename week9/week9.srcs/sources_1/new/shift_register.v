`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/09 20:27:42
// Design Name: 
// Module Name: shift_register
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


module shift_register
    #(
        parameter N = 4
    )
    (
        input clk,
        input reset_n,
        input sin,
        output reg [N - 1: 0] qout
    );

    always @(posedge clk or negedge reset_n)
        if(!reset_n) qout <= {N{1'b0}};
        else         qout <= {sin, qout[N - 1: 1]};
endmodule
