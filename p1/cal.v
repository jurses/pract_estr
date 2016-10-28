module cal(output wire out, c_out, input wire a, b, l, c_in, input wire [1:0] s);
wire out_cl, out_fa_cout, out_fa_sum;
cl cl_cal(out_cl,a,b,s);
fa fa_cal(out_fa_cout,out_fa_sum,a,b,c_in);
mux3_1 mux3_1(out_cl,out_fa_sum,out_fa_cout,out,c_out,l);
//module cl(output reg out, input wire a, b, input wire [1:0] s);
//module fa(output wire cout, sum, input wire a,b,cin);
//module mux3_1(input wire a, b, c, output reg fa_cout, fa_sum, cl_out, input wire s);
endmodule
