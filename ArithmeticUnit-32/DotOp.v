module DotOp (
    input Gh,
    input Ph,
    input Gl,
    input Pl,
    output wire G,
    output wire P
);

    assign G = Gh | (Ph & Gl);
    assign P = Ph & Pl;
    
endmodule
