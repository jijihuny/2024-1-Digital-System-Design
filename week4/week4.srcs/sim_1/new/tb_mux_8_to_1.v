`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/28 13:27:21
// Design Name: 
// Module Name: tb_mux_8_to_1
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


module tb_mux_8_to_1;
    reg [7: 0] i;
    reg [2: 0] s;
    wire o;
    
    mux_8_to_1 tb(.o(o), .s(s), .i(i));
    
    initial begin
        s = 3'b000; i = 8'b1;
    #20 s = 3'b001; i = 8'b10;
    #20 s = 3'b010; i = 8'b100;
    #20 s = 3'b011; i = 8'b1000;
    #20 s = 3'b100; i = 8'b10000;
    #20 s = 3'b101; i = 8'b100000;
    #20 s = 3'b110; i = 8'b1000000;
    #20 s = 3'b111; i = 8'b10000000;
    end
endmodule
