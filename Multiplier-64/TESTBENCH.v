`include "TOP.v"
`include "BASELINE.v"

`timescale 1ns/1ps

module TESTBENCH;

    reg clk, nrst;

    reg [63:0] A;
    reg [63:0] B;

    wire [127:0] out;
    wire [127:0] out_gold;

    reg start;
    wire ready;

    TOP au(clk, nrst, A, B, out, start, ready);
    BASELINE gold(A, B, out_gold);

    initial begin
        clk <= 1'b1;
        nrst <= 1'b0;
        #50 nrst <= 1'b1;

        repeat (100) begin
            A <= (($random % 32'hffff_ffff) << 32) | ($random % 32'hffff_ffff);
            B <= (($random % 32'hffff_ffff) << 32) | ($random % 32'hffff_ffff);
            start <= 1'b1;
            #20 start <= 1'b0;

            while (~ready) #10 ;
            if (out == out_gold)
                $display("Success!");
            else
                $display("Failed!");
            #40 ;
        end

        $finish;
    end

    always #10 clk <= ~clk;
    
endmodule
