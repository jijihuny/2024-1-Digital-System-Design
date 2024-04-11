`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/11 13:47:14
// Design Name: 
// Module Name: shift_register_4_bit
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


module shift_register_4_bit(
        clk, sin, qout
    );
    input clk, sin;
    output reg [3: 0] qout;
    
    always @(posedge clk) begin
        qout <= {qout[2: 0], sin};
    end
endmodule
