module tb_register4;

reg CLK;
reg [3:0] D;
wire [3:0] Q;

register4 uut(
    .CLK(CLK),
    .D(D),
    .Q(Q)
);

always #5 CLK = ~CLK;

initial
begin
    $dumpfile("dump.vcd");
    $dumpvars(0,tb_register4);

    CLK = 0;

    D = 4'b0000; #10;
    D = 4'b0011; #10;
    D = 4'b1010; #10;
    D = 4'b1111; #10;

    $finish;
end

endmodule