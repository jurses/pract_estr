//Mux de dos entradas de 1 bit realizado a partir de puertas 
module mux2_1_i2(output wire[3:0] out, input wire[3:0] a, b, input wire s);

mux2_1_i1 mux1(out[0], a[0], b[0], s);
mux2_1_i1 mux2(out[1], a[1], b[1], s);
mux2_1_i1 mux3(out[2], a[2], b[2], s);
mux2_1_i1 mux4(out[3], a[3], b[3], s);

endmodule
