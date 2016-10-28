`timescale 1 ns / 10 ps
module cl_tb;

reg test_a, test_b;
reg[1:0] test_clop;
wire test_out;

cl cl1(test_out, test_a, test_b, test_clop);

initial
begin
    $monitor("tiempo=%0d a=%b b=%b s=%b: out=%b", $time, test_a, test_b, test_clop, test_out);
    $dumpfile("cl_tb.vcd");
    $dumpvars;

    test_a = 1'b1;
    test_b = 1'b0;
    test_clop = 2'b00;
    #20;

    test_a = 1'b0;
    test_b = 1'b1;
    test_clop = 2'b00;
    #20;

    test_a = 1'b1;
    test_b = 1'b1;
    test_clop = 2'b00;
    #20;

    $finish;
end
endmodule
