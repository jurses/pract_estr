module cl(output reg out, input wire a, b, input wire [1:0] s);
wire s_and, s_or, s_xor, s_not;
output wire mux_out;

assign mux_out = out;

mux4_1 mux_cl(mux_out, 1'b0, 1'b1, 1'b1, s_not, 2'b01);


and(s_and,a,b); // 00
or(s_or,a,b);   // 01
xor(s_xor,a,b); // 10
not(s_not,a);   // 11

endmodule
