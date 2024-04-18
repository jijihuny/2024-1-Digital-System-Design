module decoder(
    binary_in,
    decoder_out,
    enable
);
    parameter N = 4;

    input [N-1: 0] binary_in;
    input enable;
    output reg [N*N - 1: 0] decoder_out;
    integer  i;
    always @(enable or binary_in) begin
    for(i = 0; i < N * N; i = i + 1) begin
        if(enable) begin
            decoder_out[i] = (binary_in == i) ? 1'b1 : 1'b0;
        end
        else begin
            decoder_out[i] = 1'b0;
        end
    end
    end
endmodule