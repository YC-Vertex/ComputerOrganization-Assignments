/* References:
    1. https://digitalsystemdesign.in/leading-zero-counter/
    2. Milenkovic N Z, Stankovic V V, Milic M L. Modular design of fast leading zeros counting circuit[J]. Journal of Electrical Engineering, 2015, 66(6): 329.
*/

`include "LZCx.v"

module TOP (
    input   wire    [31:0]  Din,
    output  wire    [5:0]   Dout
);

    LZC32 lzc32(Din, Dout[4:0], Dout[5]);
    
endmodule

