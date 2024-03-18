`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/14 14:13:30
// Design Name: 
// Module Name: tb_line_decoder_2_to_4
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


module tb_line_decoder_2_to_4;

    reg EN, A0, A1;
    wire D0, D1, D2, D3;
    
    line_decoder_2_to_4 uut(
        .EN(EN),
        .A0(A0),
        .A1(A1),
        .D0(D0),
        .D1(D1),
        .D2(D2),
        .D3(D3)
    );
    
    initial begin
        {EN, A1, A0} = 3'b000;
#10     {EN, A1, A0} = 3'b001;
#10     {EN, A1, A0} = 3'b010;
#10     {EN, A1, A0} = 3'b011;
#10     {EN, A1, A0} = 3'b100;
#10     {EN, A1, A0} = 3'b101;
#10     {EN, A1, A0} = 3'b110;
#10     {EN, A1, A0} = 3'b111;
#10     {EN, A1, A0} = 3'b000;
    end
    
endmodule
