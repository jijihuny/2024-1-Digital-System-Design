`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/28 13:40:40
// Design Name: 
// Module Name: complement_adder_4_bit
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


module complement_adder_4_bit(
        s, c_out, x, y, c_in
    );
    
    input [3: 0] x, y;
    input c_in;
    
    output [3: 0] s;
    output c_out;
    
    assign {c_out, s} = x + c_in + (y ^ {4{c_in}});
endmodule
