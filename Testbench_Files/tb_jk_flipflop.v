module tb_jk_flipflop;

reg J,K,CLK;
wire Q;

jk_flipflop uut(
    .J(J),
    .K(K),
    .CLK(CLK),
    .Q(Q)
);

always #5 CLK = ~CLK;

initial
begin
    $dumpfile("dump.vcd");
    $dumpvars(0,tb_jk_flipflop);

    CLK = 0;

    J=0; K=0; #10;   // No Change
    J=0; K=1; #10;   // Reset
    J=1; K=0; #10;   // Set
    J=1; K=1; #10;   // Toggle

    $finish;
end

endmodule