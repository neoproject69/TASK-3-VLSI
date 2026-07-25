module counter4(
    input CLK,
    output reg [3:0] Q
);

initial
    Q = 4'b0000;

always @(posedge CLK)
begin
    Q <= Q + 1;
end

endmodule