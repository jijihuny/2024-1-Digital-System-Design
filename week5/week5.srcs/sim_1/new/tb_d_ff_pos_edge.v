`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/11 22:13:01
// Design Name: 
// Module Name: tb_d_ff_pos_edge
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


module tb_d_ff_pos_edge;
     reg clear, clk, d;
     wire q, qbar;
     
     d_ff_pos_edge tb(.clear(clear), .clk(clk), .d(d), .q(q), .qbar(qbar));
     
     initial begin
     clk = 0; clear = 1; d = 0;
     #10 clear = 0;
     end
     always begin
        #3 clk = ~clk;
     end
     always begin
        #5 d = ~d;
     end
     
endmodule
