module shift_register_parallel_load
    #(
        parameter N = 8
    )
    (
        input clk,
        input load,
        input reset_n,
        input sin,
        input [N - 1: 0] din,
        output reg [N - 1: 0] qout
    );

    always @(posedge clk or negedge reset_n)
        if(!reset_n)  qout <= {N{1'b0}};
        else if(load) qout <= din;
        else          qout <= {sin, qout[N - 1: 1]};
endmodule