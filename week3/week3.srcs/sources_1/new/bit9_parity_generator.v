`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/28 11:27:23
// Design Name: 
// Module Name: bit9_parity_generator
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


module bit9_parity_generator(
        e, o, x
    );
    input [8: 0] x;
    wire t;
    output o;
    output e;
    
    bit8_xor xor_0(t, x[7: 0]);
    xor xor_o(o, t, x[8]);
    not not_e(e, o);
    
endmodule
