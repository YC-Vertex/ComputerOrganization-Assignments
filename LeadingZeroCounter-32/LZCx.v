module LZC4 (
    input   wire    [3:0]   Din,
    output  wire    [1:0]   Z,  // num of zeros
    output  wire    AZ          // all zeros
);

    assign AZ = (Din == 4'b0);   

    /*
        3   2   1   0       Z1  Z0
        --------------------------
        0   0   0   0       X   X
        0   0   0   1       1   1
        0   0   1   X       1   0
        0   1   X   X       0   1
        1   X   X   X       0   0
    */
    assign Z[0] = ~Din[3] & (Din[2] | ~Din[1]);
    assign Z[1] = ~Din[3] & ~Din[2];
    
endmodule


module LZE8 (
    input   wire    [7:0]   AZs,
    output  reg     [2:0]   sel,
    output  wire    AZ
);

    assign AZ = (AZs == 8'b1111_1111);

    always @ (*) begin
        casex (AZs)
            8'b0xxx_xxxx: sel = 3'd7;
            8'b10xx_xxxx: sel = 3'd6;
            8'b110x_xxxx: sel = 3'd5;
            8'b1110_xxxx: sel = 3'd4;
            8'b1111_0xxx: sel = 3'd3;
            8'b1111_10xx: sel = 3'd2;
            8'b1111_110x: sel = 3'd1;
            8'b1111_1110: sel = 3'd0;
            default: sel = 3'd7;
        endcase
    end
    
endmodule


module LZC32 (
    input   wire    [31:0]  Din,
    output  reg     [4:0]   Z,  // num of zeros
    output  wire    AZ          // all zeros
);

    wire [7:0] Z0s;
    wire [7:0] Z1s;
    wire [7:0] AZs;
    wire [2:0] sel;

    LZE8 lze8(AZs, sel, AZ);

    genvar nib;
    generate
        for (nib = 7; nib >= 0; nib = nib - 1) begin: lzc4_gen
            wire [3:0] Di;
            assign Di = Din[nib*4+3 : nib*4];
            LZC4 lzc4(Di, {Z1s[nib], Z0s[nib]}, AZs[nib]);
        end
    endgenerate

    always @ (*) begin
        Z = {~sel, 2'b0};
        // if all zeros, then Z = 00...0
        if (AZ == 1'b0) begin
            case (sel)
                3'd0: Z[1:0] = {Z1s[0], Z0s[0]};
                3'd1: Z[1:0] = {Z1s[1], Z0s[1]};
                3'd2: Z[1:0] = {Z1s[2], Z0s[2]};
                3'd3: Z[1:0] = {Z1s[3], Z0s[3]};
                3'd4: Z[1:0] = {Z1s[4], Z0s[4]};
                3'd5: Z[1:0] = {Z1s[5], Z0s[5]};
                3'd6: Z[1:0] = {Z1s[6], Z0s[6]};
                3'd7: Z[1:0] = {Z1s[7], Z0s[7]};
            endcase
        end
    end
    
endmodule

