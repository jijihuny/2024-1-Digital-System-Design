module bit8_xor(o, x);
    input [7: 0] x;
    wire [1: 0] t;
    output o;

    bit4_xor xor_1(t[0], x[3: 0]);
    bit4_xor xor_2(t[1], x[7: 4]);
    
    xor xor_o(o, t[0], t[1]);
endmodule