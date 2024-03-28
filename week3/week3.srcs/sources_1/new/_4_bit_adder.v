`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/21 13:16:40
// Design Name: 
// Module Name: _4_bit_adder
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


module _4_bit_adder(
        x, y, c_in, sum, c_out
    );
    
    input [3: 0] x, y;
    input c_in;
    output [3: 0] sum;
    output c_out;
    
    wire [2: 0] c;
    
    full_adder fa_0(x[0], y[0], c_in, sum[0], c[0]);
    full_adder fa_1(x[1], y[1], c[0], sum[1], c[1]);
    full_adder fa_2(x[2], y[2], c[1], sum[2], c[2]);
    full_adder fa_3(x[3], y[3], c[2], sum[3], c_out);
    
endmodule
