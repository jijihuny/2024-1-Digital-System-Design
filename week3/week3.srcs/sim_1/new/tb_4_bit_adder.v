`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/21 13:21:46
// Design Name: 
// Module Name: tb_4_bit_adder
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


module tb_4_bit_adder;

    reg [3: 0] x, y;
    reg c_in;
    reg [8: 0] iteration;
    
    wire [3: 0] sum;
    wire c_out;
    
    _4_bit_adder tb(
        .x(x),
        .y(y),
        .c_in(c_in),
        .sum(sum),
        .c_out(c_out)
    );
    
    initial begin
        x = 0;
        y = 0;
        c_in = 0;
        iteration = 0;
    end
    
    always #10 begin
        iteration = iteration + 1;
        x = (9'hff & (iteration >> 1));
        y = (9'hff & (iteration >> 5)) ;
        c_in = 9'b1 & iteration;
    end
               
endmodule
