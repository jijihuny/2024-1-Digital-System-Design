`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/11 13:32:54
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
    i, s, out
    );
    input [3: 0] i;
    input [1: 0] s;
    output reg out;
    
    always @(*) begin
        case (s)
            2'b00: out = i[0];
            2'b01: out = i[1];
            2'b10: out = i[2];
            default: out = i[3];
            // default == 2'b11
        endcase
    end
endmodule
