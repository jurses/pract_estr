module cal(output reg out, c_out, input wire a, b, l, c_in, input wire [1:0] s);
wire cl_o, fa_sum, fa_cout, mux_out, mux_c_out;
fa fa_cal(fa_cout, fa_sum, a, b, c_in);
cl cl_cal(cl_o, a, b, s);
mux3_1 mux_cal(mux_out, mux_c_out, fa_sum, fa_cout, cl_o, l);
endmodule
