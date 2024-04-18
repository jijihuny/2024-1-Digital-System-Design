module tb_decoder_4_to_16;
    reg [3: 0] in;
    reg en;
    wire [15: 0] out;

    decoder d(
        .binary_in(in),
        .decoder_out(out),
        .enable(en)
    );

    initial begin
    in = 0; en = 1;

    forever begin
        #50 in = in + 1;
    end
    end

    initial #800 $finish;
endmodule