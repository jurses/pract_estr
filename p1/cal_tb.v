`timescale 1 ns / 10 ps
module cal_tb;

reg test_a, test_b, test_s, test_cin;
reg[1:0] test_clop;
wire test_out, test_c_out;

cal cal1(test_out, test_c_out, test_a, test_b, test_s, test_cin, test_clop);

initial
begin
    $monitor("tiempo=%0d a=%b b=%b s=%b cin=%b clop=%b: test_out=%b, test_c_out=%b", $time, test_a, test_b, test_s, test_cin, test_clop, test_out, test_c_out);
    $dumpfile("cal_tb.vcd");
    $dumpvars;
    //0
    test_a = 1'b0;
    test_b = 1'b1;
    test_s = 1'b0;
    test_cin = 1'b0;
    test_clop = 2'bxx;
    #20;

    test_a = 1'b0;
    test_b = 1'b1;
    test_s = 1'b0;
    test_cin = 1'b0;
    test_clop = 2'b10;
    #20;
    $finish;
end
endmodule
