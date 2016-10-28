module cl(output reg out, input wire a, b, input wire [1:0] s);
wire s_and, s_or, s_xor, s_not;

and(s_and,a,b);
or(s_or,a,b);
xor(s_xor,a,b);
not(s_not,a);
//module mux4_1(output reg out, input wire a, b, c, d, input wire[1:0] s);
mux4_1 mux_cl(out, s_and, s_or, s_xor, s_not, s);

endmodule
