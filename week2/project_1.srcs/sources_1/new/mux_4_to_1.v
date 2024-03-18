`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/14 13:35:44
// Design Name: 
// Module Name: mux_4_to_1
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


module mux_4_to_1(
        out, i0, i1, i2, i3, s0, s1
    );
    
    input i0, i1, i2, i3, s0, s1;
    output out;
    
    wire a0, a1, a2, a3;
    wire ns1, ns2;
    
    not not_0(ns0, s0);
    not not_1(ns1, s1);
    
    and and_0(a0, i0, ns0, ns1);
    and and_1(a1, i1, ns0, s1);
    and and_2(a2, i2, s0, ns1);
    and and_3(a3, i3, s0, s1);
    
    or or_out(out, a0, a1, a2, a3);
    
endmodule
