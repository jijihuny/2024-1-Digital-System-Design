`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/30 18:38:15
// Design Name: 
// Module Name: top_module
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


module top_module(
        input clk, rst_n, up, down,
        output reg  [6: 0] result_FF
    );
    
    reg up_FF, down_FF;
    wire [6: 0] result;
    
    always @(posedge clk, negedge rst_n) begin
        if(!rst_n) begin
            up_FF <= 0;
            down_FF <= 0;
        end
        
        else begin
            up_FF <= up;
            down_FF <= down;
        end
    end
    
    seven_segment_updown_counter counter(
        .clk(clk),
        .rst_n(rst_n),
        .up(up_FF),
        .down(down_FF),
        .result(result)
    );
    
    always @(posedge clk, negedge rst_n) begin
        if(!rst_n)
            result_FF <= 0;
        else
            result_FF <= result;
    end
endmodule
