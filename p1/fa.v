//funciona correctamente
module fa(output wire cout, sum, input wire a,b,cin);
wire s_xor, s_and1, s_and2;
xor(s_xor,a,b);
xor(sum,s_xor, cin);
and(s_and1,s_xor,cin);
and(s_and2,a,b);
or(cout,s_and1,s_and2);
endmodule
