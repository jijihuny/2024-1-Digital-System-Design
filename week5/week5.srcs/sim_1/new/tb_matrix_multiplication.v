`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/11 21:53:53
// Design Name: 
// Module Name: tb_matrix_multiplication
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


module tb_matrix_multiplication(

    );
    
    
    
    reg [15: 0] AMat;
    reg [15: 0] BMat;
    wire [31: 0] RMat;
    
    matrix_multiplication tb(.A(AMat), .B(BMat), .R(RMat));
    
    initial begin
    AMat = 0; BMat = 0;
    #50 AMat = 16'ha5; BMat = 16'ha9;
    end
    
endmodule
