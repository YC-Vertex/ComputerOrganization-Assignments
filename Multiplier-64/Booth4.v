module Booth4(
    input   wire    [63:0]  A,
    input   wire    [2:0]   B_pp,
    output  reg     [64:0]  PP,
    output  wire    E,
    output  wire    S
);

    assign E = ((B_pp == 3'b000) || (A[63] == B_pp[2])) && (B_pp != 3'b111);
    assign S = B_pp[2];

    always @ (*) begin
        case (B_pp)
            3'b000: PP = 65'b0;
            3'b001: PP = {A[63], A};
            3'b010: PP = {A[63], A};
            3'b011: PP = {A, 1'b0};
            3'b100: PP = ~{A, 1'b0};
            3'b101: PP = ~{A[63], A};
            3'b110: PP = ~{A[63], A};
            3'b111: PP = ~65'b0;
        endcase
    end

endmodule
