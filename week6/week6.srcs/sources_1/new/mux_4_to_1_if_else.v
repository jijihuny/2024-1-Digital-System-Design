module mux_4_to_1_if_else(
    i, s, out
);
    input [3: 0] i;
    input [1: 0] s;
    output reg out;

    always @(*) begin
        if(s[1]) begin
            if(s[0]) out = i[3]; else out = i[2];
        end
        else begin
            if(s[0]) out = i[1]; else out = i[0];
        end
    end
endmodule