`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/18 17:31:41
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
    reg [8: 0] i;
    reg [2: 0] s;
    wire out;
    
    mux_8_to_1 tb(
        .i(i),
        .s(s),
        .out(out)
        );
    
    initial begin
    i = 8'b01010101;
    s = 3'b000;
    
    #10 s = 3'b001;
    #10 s = 3'b010;
    #10 s = 3'b011;
    #10 s = 3'b100;
    #10 s = 3'b101;
    #10 s = 3'b110;
    #10 s = 3'b111;
    #10 s = 3'b000;
    
    end
endmodule
