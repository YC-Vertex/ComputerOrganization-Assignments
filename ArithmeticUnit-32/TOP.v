`include "Adder32.v"

module TOP(
    input   wire    [31:0]  a,
    input   wire    [31:0]  b,
    input   wire    FS, // function select, 0 = add, 1 = substract
    input   wire    SF, // signed flag, 0 = unsigned, 1 = signed
    output  wire    [31:0]  out,
    output  reg     OF  // overflow
);

    wire [31:0] b_;
    wire ci;
    wire co;

    assign ci = FS ? 1'b1 : 1'b0;
    assign b_ = FS ? ~b : b;

    Adder32 adder(a, b_, ci, out, co);

    always @ (*) begin
        // default
        OF = 1'b0;

        // unsigned add
        if (~SF & ~FS) begin
            OF = co;
        end

        else if (~SF & FS) begin
            OF = a < b;
        end

        // signed
        else begin
            if (a[31] & b_[31]) begin
                OF = ~out[31];
            end
            else if (~a[31] & ~b_[31]) begin
                OF = out[31];
            end

            // special case: (b=32'd0, FS=1'b1), (b=32'b10...0, FS=1'b1)
            if (b == 32'd0 && FS == 1'b1) begin
                OF = 1'b0;
            end
        end
    end

endmodule

