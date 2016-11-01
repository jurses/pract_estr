module cpl1(output wire [3:0] Sal, input wire [3:0] Ent, input wire cpl);
reg aux[3:0];
always@*
begin
	if(cpl == 1) begin
		aux[0] = !Ent[0];
		aux[1] = !Ent[1];
		aux[2] = !Ent[2];
		aux[3] = !Ent[3];
	end
	else
	begin
		aux[0] = Ent[0];
		aux[1] = Ent[1];
		aux[2] = Ent[2];
		aux[3] = Ent[3];
	end
end
assign Sal[0] = aux[0];
assign Sal[1] = aux[1];
assign Sal[2] = aux[2];
assign Sal[3] = aux[3];
endmodule
