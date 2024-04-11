`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/04 13:09:25
// Design Name: 
// Module Name: comparator_cascade
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


module comparator_cascade(
        Iaeqb,
        Iagtb,
        Ialtb,
        a, b,
        Oaeqb,
        Oagtb,
        Oaltb
    );
    parameter N = 8;
    
    input Iaeqb, Iagtb, Ialtb;
    input [N - 1: 0] a, b;
    output Oaeqb, Oagtb, Oaltb;
    
    assign Oaeqb = (a == b) && Iaeqb;
    assign Oagtb = (a > b) || ((a == b) && Iagtb);
    assign Oaltb = (a < b) || ((a == b) && Ialtb);
endmodule
