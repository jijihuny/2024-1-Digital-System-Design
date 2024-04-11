`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/11 13:41:23
// Design Name: 
// Module Name: tb_mux_4_to_1
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


module tb_mux_4_to_1;
    reg [3: 0] i;
    reg [1: 0] s;
    wire out;
    
    mux_4_to_1 tb(.i(i), .s(s), .out(out));
    
    initial begin
    i = 4'b0;
    s = 2'b0;    
    end
    
    always begin
        #3 s <= s + 1;
        #10 i <= i + 1;
    end
endmodule
