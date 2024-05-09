module tb_shift_register_parallel_load;
parameter N = 4;
reg  clk, reset_n;
reg load;
reg  [N-1:0] din;
reg  sin;
wire [N-1:0] qout;

shift_register_parallel_load #(4)uut(.clk(clk), .load(load), .reset_n(reset_n), .din(din), .sin(sin), .qout(qout));

always #20 clk = ~clk;
always #30 sin = ~sin;

initial begin
clk = 0; reset_n = 1; sin = 0; load = 0; din = 0;
#10 reset_n = 0;
#10 reset_n = 1;
#100 din = 41'b1111;
load = 1;
#30 load = 0;
#100 din = 41'b1010;
load = 1;
#30 load = 0;
end
endmodule