module cl(output wire out, input wire a, b, input wire [1:0] s);
wire s_and, s_or, s_xor, s_not;

mux4_1 mux_cl(out, s_and, s_or, s_xor, s_not, s);

and(s_and,a,b); // 00
or(s_or,a,b);   // 01
xor(s_xor,a,b); // 10
not(s_not,a);   // 11

endmodule
