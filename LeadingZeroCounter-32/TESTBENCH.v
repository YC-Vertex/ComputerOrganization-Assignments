`include "TOP.v"
`include "BASELINE.v"

`timescale 1ns/1ps

module TESTBENCH;

    reg [31:0] data;
    wire [5:0] Z;
    wire [5:0] Z_gold;

    wire EQ;
    assign EQ = (Z == Z_gold);

    TOP lzc(data, Z);
    BASELINE golden(data, Z_gold);

    initial begin
        repeat (100) begin
            #1 data = $random % 32'hffff_ffff;
            #1 ;
            if (Z == Z_gold)
                $display("Success!");
            else
                $display("Failed!");
        end
        $finish;
    end
    
endmodule
