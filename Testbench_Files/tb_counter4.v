module tb_counter4;

reg CLK;
wire [3:0] Q;

counter4 uut(
    .CLK(CLK),
    .Q(Q)
);

initial
begin
    $dumpfile("dump.vcd");
    $dumpvars(0,tb_counter4);

    CLK = 0;
end

always #5 CLK = ~CLK;

initial
begin
    #160;
    $finish;
end

endmodule