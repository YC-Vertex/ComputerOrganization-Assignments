module FullAdder (
    input a,
    input b,
    input ci,
    output wire s,
    output wire co,
    output wire G,
    output wire P
);
    
    assign s = a ^ b ^ ci;
    assign G = a & b;
    assign P = a | b;
    assign co = G | (P & ci);

endmodule
