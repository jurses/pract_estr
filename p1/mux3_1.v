module mux3_1(input wire a, b, c, output reg out, c_out, input wire s);
	always@(s or a or b or c)
		case(s)
			0: out = a;
			1:	begin
				c_out = b; out = a;
				end
			default:	begin
						c_out = 0; out = 0;
						end
		endcase
endmodule
