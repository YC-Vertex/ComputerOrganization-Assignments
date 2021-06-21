`include "TOP.v"
`include "BASELINE.v"

`timescale 1ns/1ps

module TESTBENCH;

    reg [31:0] A;
    reg [31:0] B;
    reg FS;
    reg SF;

    wire [31:0] out;
    wire OF;
    wire [31:0] out_gold;
    wire OF_gold;
    wire EQ = (out == out_gold);
    wire EQ_OF = (OF == OF_gold);

    TOP au(A, B, FS, SF, out, OF);
    BASELINE gold(A, B, FS, SF, out_gold, OF_gold);

    initial begin
        A = 32'hff_ff_ff_ff;
        B = 32'h0;
        FS = 1'b0;
        SF = 1'b1;
        #10 ;
        if (out == out_gold && OF == OF_gold)
            $display("Success!");
        else
            $display("Failed!");
        #10 ;

        SF = 1'b0;
        FS = 1'b0;
        repeat (100) begin
            A = $random;
            B = $random;
            #10 ;
            if (out == out_gold && OF == OF_gold)
                $display("Success!");
            else
                $display("Failed!");
            #10 ;
        end

        SF = 1'b0;
        FS = 1'b1;
        repeat (100) begin
            A = $random;
            B = $random;
            #10 ;
            if (out == out_gold && OF == OF_gold)
                $display("Success!");
            else
                $display("Failed!");
            #10 ;
        end

        SF = 1'b1;
        FS = 1'b0;
        repeat (100) begin
            A = $random;
            B = $random;
            #10 ;
            if (out == out_gold && OF == OF_gold)
                $display("Success!");
            else
                $display("Failed!");
            #10 ;
        end

        SF = 1'b1;
        FS = 1'b1;
        repeat (100) begin
            A = $random;
            B = $random;
            #10 ;
            if (out == out_gold && OF == OF_gold)
                $display("Success!");
            else
                $display("Failed!");
            #10 ;
        end

        $finish;
    end
    
endmodule
