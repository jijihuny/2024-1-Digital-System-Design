module bit4_xor(o, x);
    input [3: 0] x;
    wire [1: 0] t;
    output o;
    
    xor xor_1(t[0], x[0], x[1]);
    xor xor_2(t[1], x[2], x[3]);
    
    xor xor_o(o, t[0], t[1]);
endmodule