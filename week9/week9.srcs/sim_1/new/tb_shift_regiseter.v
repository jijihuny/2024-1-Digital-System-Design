module tb_shift_register;
parameter N = 4;
reg  clk, reset_n;
reg  sin; // Serial input data
wire [N-1:0] qout;

shift_register #(4) uut(clk, reset_n, sin, qout);

always #20 clk = ~clk;
always #30 sin = ~sin;

initial begin
clk = 0; reset_n = 1; sin = 0;
#10 reset_n = 0;
#10 reset_n = 1;
end
endmodule