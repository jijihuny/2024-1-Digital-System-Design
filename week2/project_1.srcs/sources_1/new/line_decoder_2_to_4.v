`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/14 14:09:46
// Design Name: 
// Module Name: line_decoder_2_to_4
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


module line_decoder_2_to_4(
        EN, A0, A1, D0, D1, D2, D3
    );
    
    input EN, A0, A1;
    output D0, D1, D2, D3;
    wire A0_n, A1_n, N0, N1, N2, N3;
    
    not g0(A0_n, A0);
    not g1(A1_n, A1);
    
    and
        g3(N0, A0_n, A1_n),
        g4(N1, A0, A1_n),
        g5(N2, A0_n, A1),
        g6(N3, A0, A1),
        g7(D0, EN, N0),
        g8(D1, EN, N1),
        g9(D2, EN, N2),
        g10(D3, EN, N3);
endmodule
