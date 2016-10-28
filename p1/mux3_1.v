module mux3_1(output reg out, c_out, input wire a, b, c, input wire s);
	always@(s or a or b or c)
		case(s)
			0:	begin
				c_out = b; out = a;
				end
			1: out = c;
			default:	begin
						c_out = 0; out = 0;
						end
		endcase
endmodule
