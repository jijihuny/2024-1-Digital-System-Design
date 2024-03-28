`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/03/21 13:12:12
// Design Name: 
// Module Name: full_adder
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


module full_adder(
        x, y, cin, s, cout
    );
    input x, y, cin;
    output s, cout;
    
    wire s1, c1, c2;
    
    half_adder ha_1(x, y, s1, c1);
    half_adder ha_2(cin, s1, s, c2);
    or (cout, c1, c2);
    
endmodule
