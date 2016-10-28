`timescale 1 ns/10ps

module mux_tb;
reg test_a,test_b,test_c,test_d;
reg[1:0] test_s;
wire test_out;

//module mux4_1(output reg out, input wire a,b,c,d input wire[1:0] s);
mux4_1 mux(test_out, test_a,test_b,test_c,test_d, test_s);

initial
begin
    $monitor("tiempo=%0d, salida=%b, a=%b, b=%b, c=%b, d=%b, s=%b", $time, test_out, test_a, test_b, test_c, test_d, test_s);
    $dumpfile("mux_tb.vcd");
    $dumpvars;

    test_a = 1;
    test_b = 0;
    test_c = 0;
    test_d = 0;
    test_s = 2'b00;
    #20;

    test_a = 0;
    test_b = 1;
    test_c = 0;
    test_d = 0;
    test_s = 2'b01;
    #20;

    test_a = 0;
    test_b = 0;
    test_c = 1;
    test_d = 0;
    test_s = 2'b10;
    #20;

    test_a = 0;
    test_b = 0;
    test_c = 0;
    test_d = 1;
    test_s = 2'b11;
    #20;

    $finish;
end

endmodule
