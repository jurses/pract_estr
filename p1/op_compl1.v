module op_compl1(output wire[3:0] op1, op2, input wire[3:0] a, b, input wire op1s, op2s, cp1s);
reg[3:0] zero = 4'b0000;
wire[3:0] mux_out;
mux2_1_i2 mux1(op1, zero, a, op1s);
mux2_1_i2 mux2(mux_out, a, b, op2s);
cpl1 cpl11(op2, mux_out, cp1s);
endmodule
