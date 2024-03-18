`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/18 16:20:43
// Design Name: 
// Module Name: full_adder
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


module full_adder(
    x, y, c_in, s, c_out
    );
    input x, y, c_in;
    output s, c_out;
    
    wire s1, c1, c2;
    
    xor xor_half(s1, x, y);
    and and_half(c1, x, y);
    
    xor xor_half2(s, c_in, s1);
    and and_half2(c2, c_in, s1);
    
    or or_carry(c_out, c1, c2);
    
endmodule
