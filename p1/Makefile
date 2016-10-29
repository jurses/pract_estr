TB = cal_tb.v cl_tb.v fa_tb.v mux_tb.v
MODULES = cal.v cl.v fa.v mux3_1.v mux4_1.v
BINARY = cal

CC = iverilog

all: modulos

modulos: $(TB) cal_tb.v
	$(CC) -o $(BINARY) $(MODULES)
