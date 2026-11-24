module alu_tb;

reg [7:0] A, B;
reg [2:0] S;
wire [7:0] Y;
wire Carry;

alu uut (
    .A(A),
    .B(B),
    .S(S),
    .Y(Y),
    .Carry(Carry)
);

initial begin

    A = 8'd20;
    B = 8'd10;

    S = 3'b000; #10;
    $display("Addition = %d", Y);

    S = 3'b001; #10;
    $display("Subtraction = %d", Y);

    S = 3'b010; #10;
    $display("AND = %b", Y);

    S = 3'b011; #10;
    $display("OR = %b", Y);

    S = 3'b100; #10;
    $display("XOR = %b", Y);

    S = 3'b101; #10;
    $display("NOT = %b", Y);

    S = 3'b110; #10;
    $display("Left Shift = %b", Y);

    S = 3'b111; #10;
    $display("Right Shift = %b", Y);

    $finish;
end

endmodule