module mux_4_to_1_if_else(
    i, s, out
);
    input [3: 0] i;
    input [1: 0] s;
    output reg out;

    always @(*) begin
        if(s1) begin
            if(s0) out = i3; else out = i2;
        end
        else begin
            if(s0) out = i1; else out = i0;
        end
    end
endmodule