`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/04/11 20:18:26
// Design Name: 
// Module Name: tb_comparator_cascade
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


module tb_comparator_cascade(

    );
    
    reg [7: 0] a, b;
    reg Iagtb, Ialtb, Iaeqb;
    wire Oagtb, Oaltb, Oaeqb;
    
    comparator_cascade tb(.Iaeqb(Iaeqb), .Iagtb(Iagtb), .Ialtb(Ialtb),
                        .a(a), .b(b), .Oaeqb(Oaeqb), .Oagtb(Oagtb), .Oaltb(Oaltb));
                        
                        
                        
   initial begin
   a = 0; b= 0; Iagtb= 1'b0; Iaeqb=1'b1; Ialtb=1'b0;
   #100 a = 8'd16; b = 8'd55;
   end                 
endmodule
