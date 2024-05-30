`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/30 18:20:49
// Design Name: 
// Module Name: tb_seven_segment_updown_counter
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


module tb_seven_segment_updown_counter;
    reg clk, rst_n, up, down;
    wire [6: 0] result;
    
    seven_segment_updown_counter UUT(clk, rst_n, up, down, result);
    
    initial begin
        clk = 0;
        rst_n = 1;
        up = 0;
        down = 0;
        
        #100 rst_n = 0;
        #15 rst_n = 1;
        
        #20 up = 1; down = 0;
        #400 up = 0; down = 1;
        #400 up = 0; down = 0;
        
        #100 $finish;
    end
    
    always #20 clk = ~clk;
endmodule
