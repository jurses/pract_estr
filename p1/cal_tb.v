`timescale 1 ns / 10 ps
module cal_tb;

reg test_a, test_b, test_l, test_cin;
reg[1:0] test_s;
wire test_out, test_c_out;

cal cal1(test_out, test_c_out, test_a, test_b, test_l, test_cin, test_s);

initial
begin
    $monitor("tiempo=%0d a=%b b=%b l=%b cin=%b s=%b: test_out=%b, test_c_out=%b", $time, test_a, test_b, test_l, test_cin, test_s, test_out, test_c_out);
    //0
	//
    test_a = 1'b0;
    test_b = 1'b1;
    test_l = 1'b0;
    test_cin = 1'b0;
    test_s = 2'bxx;
    #20;

    test_a = 1'b0;
    test_b = 1'b1;
    test_l = 1'b0;
    test_cin = 1'b0;
    test_s = 2'b00;
    #20;
    $finish;
end
endmodule
