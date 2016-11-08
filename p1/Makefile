TB = cal_tb.v cl_tb.v fa_tb.v mux_tb.v
MODULES = cal.v cl.v fa.v mux3_1.v mux4_1.v mux2_1_i1.v mux2_1_i2.v op_compl1.v cpl1.v alu.v
BINARY1 = cal
BINARY2 = alu

CC = iverilog

all: alu

alu: $(MODULES) alu_tb.v
	$(CC) -o $(BINARY2) $(MODULES) alu_tb.v
