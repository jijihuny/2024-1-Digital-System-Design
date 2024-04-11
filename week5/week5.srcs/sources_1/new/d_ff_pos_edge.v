`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/04 13:34:01
// Design Name: 
// Module Name: d_ff_pos_edge
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


module d_ff_pos_edge(
        clear, clk, d, q, qbar
    );
    
    input clear, clk, d;
    output q, qbar;
    
    wire cbar, s, sbar, r, rbar;
    
    assign cbar = ~clear;
    
    assign s = ~(clk && sbar && cbar);
    assign sbar = ~(s && rbar);
    
    assign r = ~(clk && rbar && s);
    assign rbar = ~(r && cbar && d);
    
    assign q = ~(qbar && s);
    assign qbar = ~(q && r && cbar);
endmodule
