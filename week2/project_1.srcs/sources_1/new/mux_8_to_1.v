`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/18 17:23:01
// Design Name: 
// Module Name: mux_8_to_1
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


module mux_8_to_1(
    s, i, out
    );
    input [2: 0] s;
    input [8: 0] i;
    output out;
    
    wire [8: 0] v;
    wire [2: 0] ns;
    
    not not_0(ns[0], s[0]);
    not not_1(ns[1], s[1]);
    not not_2(ns[2], s[2]);
    
    and and_0(v[0], i[0], ns[2], ns[1], ns[0]);
    and and_1(v[1], i[1], ns[2], ns[1], s[0]);
    and and_2(v[2], i[2], ns[2], s[1], ns[0]);
    and and_3(v[3], i[3], ns[2], s[1], s[0]);
    and and_4(v[4], i[4], s[2], ns[1], ns[0]);
    and and_5(v[5], i[5], s[2], ns[1], s[0]);
    and and_6(v[6], i[6], s[2], s[1], ns[0]);
    and and_7(v[7], i[7], s[2], s[1], s[0]);
    
    or or_out(out, v[0], v[1], v[2], v[3], v[4], v[5], v[6], v[7]);
endmodule
