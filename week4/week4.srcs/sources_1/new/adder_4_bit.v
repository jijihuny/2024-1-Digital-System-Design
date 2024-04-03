module adder_4_bit(s, c_out, x, y, c_in);
    input [3: 0] x, y;
    input c_in;
    output [3: 0] s;
    output c_out;
    
    assign {c_out, s} = x + y + c_in;
endmodule