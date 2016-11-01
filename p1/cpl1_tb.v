`timescale 1 ns / 10 ps
module cpl1_tb;

reg[3:0] ent;
wire[3:0] sal;
cpl1 cpl11(sal, ent, 1'b0);

initial
begin
	$monitor("tiempo=%0d, salida=%b", $time, sal);

	ent = 4'b0010;
	#20;
	$finish;
end
endmodule
