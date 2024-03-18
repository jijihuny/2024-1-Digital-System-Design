`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/14 13:43:16
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
    
    mux_4_to_1 uut(
        .i0(i[0]),
        .i1(i[1]),
        .i2(i[2]),
        .i3(i[3]),
        .s0(s[0]),
        .s1(s[1]),
        .out(out)
    );
    
    initial begin
        i = 4'b0000;
        s = 2'b00;
        
        #20 s = 2'b00; i = 4'b0001;
        #20 s = 2'b10; i = 4'b0010;
        #20 s = 2'b01; i = 4'b0100;
        #20 s = 2'b11; i = 4'b1000;
        #20 s = 2'b11; i = 4'b0111;
    end
    
endmodule
