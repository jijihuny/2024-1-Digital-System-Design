`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/09 20:27:42
// Design Name: 
// Module Name: register_file
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


module register_file #(
        parameter M = 4,
        parameter N = 16,
        parameter W = 8   
    )
    (
        input clk,
        input wr_enable,
        input [W - 1: 0] din,
        input [M - 1: 0] rd_addra,
        input [M - 1: 0] rd_addrb,
        input [M - 1: 0] wr_addr,
        output[W - 1: 0] douta, 
        output [W - 1: 0] doutb
    );
    
    reg[W - 1: 0] reg_file[N - 1: 0];
    
    assign douta = reg_file[rd_addra];
    assign doutb = reg_file[rd_addrb];
    
    always @(posedge clk)
        if(wr_enable) reg_file[wr_addr] <= din;
        
endmodule
