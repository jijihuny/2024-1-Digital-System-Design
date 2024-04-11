`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/11 13:49:01
// Design Name: 
// Module Name: tb_shift_register_4_bit
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


module tb_shift_register_4_bit;

    reg sin, clk;
    wire [3: 0] qout;
    
    shift_register_4_bit tb(.sin(sin), .clk(clk), .qout(qout));
    
    initial begin
        sin = 0;
        clk = 0;
    end
    
    always begin
        #5 clk <= ~clk;
    end
    always #3 sin <= ~sin;
    
    
endmodule
