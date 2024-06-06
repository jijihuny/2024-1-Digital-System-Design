`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/30 13:18:00
// Design Name: 
// Module Name: cla_adder
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


module cla_adder
    #(
        parameter N = 4
    )
    (
        input [N - 1: 0] x,
        input [N - 1: 0] y,
        input cin,
        output [N - 1: 0] sum,
        output cout  
    );
    
    wire [N - 1: 0] p, g;
    wire [N: 0] c;
    
    assign c[0] = cin;
    
    genvar i;
    generate for (i = 0; i < N; i = i + 1) begin: pq_cla
        assign p[i] = x[i] ^ y[i];
        assign g[i] = x[i] & y[i];
    end
    endgenerate
    
    generate for (i = 1; i < N + 1; i = i + 1) begin: carry_cla
        assign c[i] = g[i - 1] | (p[i - 1] & c[i - 1]);
    end
    endgenerate
    
    generate for (i = 0; i < N; i = i + 1) begin: sum_cla
        assign sum[i] = p[i] ^ c[i];
    end
    endgenerate
    
    assign cout = c[N];
endmodule
