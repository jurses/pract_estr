module alu(output wire [3:0] R, output wire zero, carry, sign, input wire [3:0] A, B, input wire[1:0] ALUop, input wire L);

wire[3:0] op1, op2;

//zero
assign zero = ~R[0]&~R[1]&~R[2]&~R[3];

//op1_A
output op1_A;
assign op1_A = ~ALUop[1] | L;

//op1_B
wire op1_B;
assign op1_B = (~ALUop[1] | ALUop[0] | L);

//cp1
wire cp1;
assign cp1 = ~L & (ALUop[1] | ALUop[0]);

//cin

wire cin;
assign cin = ALUop[1] | ALUop[0];

//instanciacion de la obtencion a complemento a 1 de los operandos
op_compl1 op_compl11(op1, op2, A, B, op1_A, op1_B, cp1);

//instanciación de las células lógicas

wire[2:0] cout;
cal cal1(R[0],cout[0],op1[0],op2[0],L,cin,ALUop);
cal cal2(R[1],cout[1],op1[1],op2[1],L,cout[0],ALUop);
cal cal3(R[2],cout[2],op1[2],op2[2],L,cout[1],ALUop);
cal cal4(R[3],carry,op1[3],op2[3],L,cout[2],ALUop);
assign sign = R[3];
endmodule
