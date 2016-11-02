module cpl1(output wire [3:0] Sal, input wire [3:0] Ent, input wire cpl);
wire [3:0] n_Ent;

not inv1(n_Ent[0], Ent[0]);
not inv2(n_Ent[1], Ent[1]);
not inv3(n_Ent[2], Ent[2]);
not inv4(n_Ent[3], Ent[3]);

mux2_1_i1 mux1(Sal[0], Ent[0], n_Ent[0], cpl);
mux2_1_i1 mux2(Sal[1], Ent[1], n_Ent[1], cpl);
mux2_1_i1 mux3(Sal[2], Ent[2], n_Ent[2], cpl);
mux2_1_i1 mux4(Sal[3], Ent[3], n_Ent[3], cpl);
endmodule
