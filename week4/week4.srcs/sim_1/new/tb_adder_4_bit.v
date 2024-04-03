`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/03 16:36:32
// Design Name: 
// Module Name: tb_adder_4_bit
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


module tb_adder_4_bit;
    reg c_in;
    reg [3: 0] x, y;
    wire c_out;
    wire [3: 0] s;
    
//    adder_4_bit tb(.c_in(c_in), .x(x), .y(y), .c_out(c_out), .s(s));
    complement_adder_4_bit tb2(.c_in(c_in), .x(x), .y(y), .c_out(c_out), .s(s));
    initial begin
        c_in = 1'b0;
        x = 4'b0;
        y = 4'b0;
    end
    
    always #10 x = x + 1;
    always #10 y = y + 1;
    always #5 c_in = ~c_in;
    
    initial #100 $finish;
endmodule
