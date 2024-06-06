`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/30 13:27:57
// Design Name: 
// Module Name: report_cla_adder
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


module report_cla_adder(
        input [31: 0] a,
        input [31: 0] b,
        input clk,
        input reset,
        output reg[31: 0] sum_FF
    );
    wire [31: 0] sum;
    wire cout;
    
    cla_adder #(32) cla(a, b, 1'b0, sum, cout);
    
    always @(posedge clk or negedge reset) begin
    if(!reset) sum_FF <= 0;
    else sum_FF <= sum;
    end
endmodule
