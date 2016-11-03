module alu(output wire [3:0] R, output wire zero, carry, sign, input wire [3:0] A, B, input wire[1:0] ALUop, input wire L);

//zero
wire[3:0] op1, op2, s_n;
wire[1:0] s_a;
wire cpl, op1_A, op2_B, cin;
not inv1(s_n[0],R[0]);
not inv2(s_n[1],R[1]);
not inv3(s_n[2],R[2]);
not inv4(s_n[3],R[3]);
and and1(s_a[0], s_n[0], s_n[1]);
and and2(s_a[1], s_n[2], s_n[3]);
and and3(zero, s_a[0], s_a[1]);

//cp1
wire [2:0] s_a_cp1;
wire [2:0] s_o_cp1;
wire cp1;
and and4(s_a_cp1[0], !L, ALUop[1]);
and and5(s_a_cp1[1], !L, ALUop[0]);
and and6(s_a_cp1[2], ALUop[1], ALUop[0]);
or or1(s_o_cp1[0], s_a_cp1[0], s_a_cp1[1]);
or or2(s_o_cp1[1], s_a_cp1[1], s_a_cp1[2]);
or or3(cp1, s_o_cp1[0], s_o_cp1[1]);

//op1_A
wire op1_A = 1'b1;

//op1_B
wire op1_B;
wire[1:0] s_o_op1_B;
or or4(s_o_op1_B[0], ALUop[0], ALUop[1]);
or or5(s_o_op1_B[1], ALUop[1], L);
or or6(s_o_op1_B, s_o_op1_B[0], s_o_op1_B[1]);

//cin
wire cin;
wire[1:0] s_a_cin;
and and7(s_a_cin[0], !L, ALUop[1]);
and and8(s_a_cin[1], !L, ALUop[0]);
or or7(cin, s_a_cin[0], s_a_cin[1]);

//instanciacion de la obtencion a complemento a 1 de los operandos
op_compl1 op_compl11(op1, op2, A, B, op1_A, op1_B, cp1);

//instanciación de las células lógicas
wire[2:0] cout;
cal cal1(R[0],cout[0],op1[0],op2[0],L,cin,ALUop);
cal cal2(R[1],cout[1],op1[1],op2[1],L,cout[0],ALUop);
cal cal3(R[2],cout[2],op1[2],op2[2],L,cout[1],ALUop);
cal cal4(R[3],carry,op1[3],op2[3],L,cout[2],ALUop);
endmodule
