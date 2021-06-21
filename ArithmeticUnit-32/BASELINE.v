module BASELINE(
    input   wire    [31:0]  a,
    input   wire    [31:0]  b,
    input   wire    FS, // function select, 0 = add, 1 = substract
    input   wire    SF, // signed flag, 0 = unsigned, 1 = signed
    output  wire    [31:0]  out,
    output  reg     OF  // overflow
);

    wire signed [31:0] as;
    wire signed [31:0] bs;
    assign as = a;
    assign bs = b;

    reg [31:0] o;
    reg signed [31:0] os;
    assign out = SF ? os : o;

    always @ (*) begin
        if (SF) begin
            if (FS)
                os = as - bs;
            else
                os = as + bs;
        end
        else begin
            if (FS)
                o = a - b;
            else
                o = a + b;
        end
    end

    always @ (*) begin
        if (~SF & ~FS) begin // unsigned add
            OF = a > (32'hffff_ffff - b);
        end
        else if (~SF & FS) begin // unsigned sub
            OF = b > a;
        end
        else if (SF & ~FS) begin // signed add
            OF = (as > 0 && bs > 0 && os < 0) || (as < 0 && bs < 0 && os > 0);
        end
        else begin // signed sub
            OF = (as > 0 && bs < 0 && os < 0) || (as < 0 && bs > 0 && os > 0);
        end
    end

endmodule

