module BASELINE(
    input   wire    signed  [63:0]  A,
    input   wire    signed  [63:0]  B,
    output  wire    signed  [127:0] P
);

    assign P = A * B;

endmodule