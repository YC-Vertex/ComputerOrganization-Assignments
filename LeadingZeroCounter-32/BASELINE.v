module BASELINE(
    input   wire    [31:0]  Din,
    output  reg     [5:0]   Dout
);

    always @ (*) begin
        if (Din[31] == 1'b1)
            Dout = 6'd0;
        else if (Din[31:30] == 2'b1)
            Dout = 6'd1;
        else if (Din[31:29] == 3'b1)
            Dout = 6'd2;
        else if (Din[31:28] == 4'b1)
            Dout = 6'd3;
        else if (Din[31:27] == 5'b1)
            Dout = 6'd4;
        else if (Din[31:26] == 6'b1)
            Dout = 6'd5;
        else if (Din[31:25] == 7'b1)
            Dout = 6'd6;
        else if (Din[31:24] == 8'b1)
            Dout = 6'd7;
        else if (Din[31:23] == 9'b1)
            Dout = 6'd8;
        else if (Din[31:22] == 10'b1)
            Dout = 6'd9;
        else if (Din[31:21] == 11'b1)
            Dout = 6'd10;
        else if (Din[31:20] == 12'b1)
            Dout = 6'd11;
        else if (Din[31:19] == 13'b1)
            Dout = 6'd12;
        else if (Din[31:18] == 14'b1)
            Dout = 6'd13;
        else if (Din[31:17] == 15'b1)
            Dout = 6'd14;
        else if (Din[31:16] == 16'b1)
            Dout = 6'd15;
        else if (Din[31:15] == 17'b1)
            Dout = 6'd16;
        else if (Din[31:14] == 18'b1)
            Dout = 6'd17;
        else if (Din[31:13] == 19'b1)
            Dout = 6'd18;
        else if (Din[31:12] == 20'b1)
            Dout = 6'd19;
        else if (Din[31:11] == 21'b1)
            Dout = 6'd20;
        else if (Din[31:10] == 22'b1)
            Dout = 6'd21;
        else if (Din[31:9] == 23'b1)
            Dout = 6'd22;
        else if (Din[31:8] == 24'b1)
            Dout = 6'd23;
        else if (Din[31:7] == 25'b1)
            Dout = 6'd24;
        else if (Din[31:6] == 26'b1)
            Dout = 6'd25;
        else if (Din[31:5] == 27'b1)
            Dout = 6'd26;
        else if (Din[31:4] == 28'b1)
            Dout = 6'd27;
        else if (Din[31:3] == 29'b1)
            Dout = 6'd28;
        else if (Din[31:2] == 30'b1)
            Dout = 6'd29;
        else if (Din[31:1] == 31'b1)
            Dout = 6'd30;
        else if (Din[31:0] == 32'b1)
            Dout = 6'd31;
        else
            Dout = 6'd32;
    end

endmodule

