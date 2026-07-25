module tb_d_flipflop;

reg D, CLK;
wire Q;

d_flipflop uut(
    .D(D),
    .CLK(CLK),
    .Q(Q)
);

always #5 CLK = ~CLK;

initial
begin
    $dumpfile("dump.vcd");
    $dumpvars(0,tb_d_flipflop);

    CLK = 0;

    D = 0; #10;
    D = 1; #10;
    D = 0; #10;
    D = 1; #10;

    $finish;
end

endmodule