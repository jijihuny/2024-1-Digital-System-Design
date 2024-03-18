`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/18 16:25:01
// Design Name: 
// Module Name: tb_full_adder
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


module tb_full_adder;
    reg x, y, c_in;
    wire c_out, s;
    
    full_adder tb(
        .x(x),
        .y(y),
        .c_in(c_in),
        .c_out(c_out),
        .s(s)
    );
    
    initial begin
        {x, y, c_in} = 3'b000;
        
        #10 {x, y, c_in} = 3'b001;
        #10 {x, y, c_in} = 3'b010;
        #10 {x, y, c_in} = 3'b011;
        #10 {x, y, c_in} = 3'b100;
        #10 {x, y, c_in} = 3'b101;
        #10 {x, y, c_in} = 3'b110;
        #10 {x, y, c_in} = 3'b111;
    end
    
endmodule
