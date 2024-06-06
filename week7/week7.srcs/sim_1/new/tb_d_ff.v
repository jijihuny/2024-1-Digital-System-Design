`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/18 13:39:17
// Design Name: 
// Module Name: tb_d_ff
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


module tb_d_ff;
    reg D, en, clk, rstn;
    wire Q, QBAR;
    
    d_ff ff(Q, QBAR, D, en, clk, rstn);
    integer i;
    initial begin
        clk = 0; en = 0; rstn = 0; D = 1'b0
        #
           
    end
endmodule
