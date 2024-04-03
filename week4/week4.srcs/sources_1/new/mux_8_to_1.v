`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/28 13:18:27
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
        o, s, i
    );
    
    input [7: 0] i;
    input [2: 0] s;
    output o;
    
    assign o = 
                (s == 3'b000 & i[0]) |
                (s == 3'b001 & i[1]) |
                (s == 3'b010 & i[2]) |
                (s == 3'b011 & i[3]) |
                (s == 3'b100 & i[4]) |
                (s == 3'b101 & i[5]) |
                (s == 3'b110 & i[6]) |
                (s == 3'b111 & i[7]);
endmodule
