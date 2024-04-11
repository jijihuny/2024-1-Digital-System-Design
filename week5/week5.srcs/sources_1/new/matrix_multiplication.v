`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/04 13:15:27
// Design Name: 
// Module Name: matrix_multiplication
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


module matrix_multiplication(
    A, B, R
    );
    parameter N = 4;
    input [N ** 2 - 1: 0] A, B;
    output [2 * (N ** 2) - 1: 0] R;
    
    wire [3: 0] AMat[0: 1][0: 1];
    wire [3: 0] BMat[0: 1][0: 1];
    wire [7: 0] RMat[0: 1][0: 1];
    
    assign AMat[0][0] = A[3: 0];
    assign AMat[0][1] = A[7: 4];
    assign AMat[1][0] = A[11: 8];
    assign AMat[1][1] = A[15: 12];
    
    assign BMat[0][0] = B[3: 0];
    assign BMat[0][1] = B[7: 4];
    assign BMat[1][0] = B[11: 8];
    assign BMat[1][1] = B[15: 12];
    
    assign RMat[0][0] = (AMat[0][0] * BMat[0][0] + AMat[0][1] * BMat[1][0]);
    assign RMat[0][1] = (AMat[0][0] * BMat[0][1] + AMat[0][1] * BMat[1][1]);
    assign RMat[1][0] = (AMat[1][0] * BMat[0][0] + AMat[1][1] * BMat[1][1]);
    assign RMat[1][1] = (AMat[1][0] * BMat[0][1] + AMat[1][1] * BMat[1][1]);
    
    assign R = { RMat[1][1], RMat[1][0], RMat[0][1], RMat[0][0]};
endmodule
