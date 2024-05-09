`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/05/09 20:36:10
// Design Name: 
// Module Name: tb_register_file
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


module tb_register_file;
reg[3: 0] addr_A, addr_B, addr_W;
reg[7: 0] DATA_IN;
reg CLK, WR;

wire [7: 0] OUT_A, OUT_B;

register_file Regfile(
    .clk(CLK),
    .rd_addra(addr_A),
    .rd_addrb(addr_B),
    .wr_addr(addr_W),
    .wr_enable(WR),
    .din(DATA_IN),
    .douta(OUT_A),
    .doutb(OUT_B)
);

initial begin
CLK = 0; WR = 0; addr_A = 0; addr_B = 0; addr_W = 0; DATA_IN = 0;

#50 WR=1'b1; addr_W=4'd3; DATA_IN = 8'd32;
#50 WR=1'b1; addr_W=4'd5; DATA_IN = 8'd16;
#50 WR=1'b0; addr_A=4'd3; addr_B=4'd5;
end

always #25 CLK <= ~CLK;
endmodule
