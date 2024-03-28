`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/28 11:39:17
// Design Name: 
// Module Name: tb_bit9_parity_generator
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


module tb_bit9_parity_generator;
    reg [8: 0] x;
    wire e, o;
    
    bit9_parity_generator tb(.e(e), .o(o), .x(x));
    
    initial begin
        x = 9'd0;
    end

    always begin
        #10 x = x + 1;
    end

endmodule
