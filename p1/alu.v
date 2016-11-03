module alu(output wire [3:0] R, output wire zero, carry, sign, input wire [3:0] A, B, input wire[1:0] ALUop, input wire L);
/*
wire c_out[2:0];
cal cal0(R[0], c_out[0], A[0], B[0], L, 1'b0, ALUop);
cal cal1(R[1], c_out[1], A[1], B[0], L, c_out[0], ALUop);
cal cal2(R[2], c_out[2], A[2], B[0], L, c_out[1], ALUop);
cal cal3(R[3], carry, A[3], B[3], L, c_out[2], ALUop);
*/
wire[3:0] op1, op2, s_n;
wire[1:0] s_a;
not inv1(s_n[0],R[0]);
not inv2(s_n[1],R[1]);
not inv3(s_n[2],R[2]);
not inv4(s_n[3],R[3]);
and and1(s_a[0], s_n[0], s_n[1]);
and and2(s_a[1], s_n[2], s_n[3]);
and and3(zero, s_a[0], s_a[1]);
op_compl1 op_compl11(op1, op2, A, B, )
