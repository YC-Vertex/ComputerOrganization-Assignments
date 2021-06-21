`include "Booth4.v"

module TOP(
    input   wire    clk,
    input   wire    nrst,
    input   wire    [63:0]  A,
    input   wire    [63:0]  B,
    output  reg     [127:0] P,
    input   wire    start,
    output  wire    ready
);

    localparam S_IDLE = 2'b00;
    localparam S_LOAD = 2'b01;
    localparam S_BUSY = 2'b10;
    localparam S_FINISH = 2'b11;

    reg [1:0] STATE;
    reg [1:0] next_state;
    reg [5:0] count;
    assign ready = (STATE == S_IDLE);

    reg [63:0] A_buf;
    reg [64:0] B_buf;
    reg [67:0] P_cur;
    reg [63:0] P_sft;
    reg [63:0] Ss;

    wire [64:0] PP;
    wire E, S;
    Booth4 enc(A_buf, B_buf[2:0], PP, E, S);
    
    always @ (*) begin
        if (STATE == S_IDLE && start == 1'b1)
            next_state = S_LOAD;
        if (STATE == S_LOAD)
            next_state = S_BUSY;
        if (STATE == S_BUSY && count == 6'd31)
            next_state = S_FINISH;
        if (STATE == S_FINISH)
            next_state = S_IDLE;
    end

    always @ (posedge clk or negedge nrst) begin
        if (~nrst) begin
            STATE <= S_IDLE;
        end
        else begin
            STATE <= next_state;
        end
    end

    always @ (posedge clk or negedge nrst) begin
        if (~nrst) begin
            count <= 6'd0;
        end
        else begin
            if (STATE == S_BUSY)
                count <= count + 1;
            else
                count <= 6'd0;
        end
    end

    always @ (posedge clk or negedge nrst) begin
        if (~nrst) begin
            A_buf <= 64'd0;
            B_buf <= 64'd0;
        end
        else begin
            if (next_state == S_LOAD) begin
                A_buf <= A;
                B_buf <= {B, 1'b0};
            end
            else if (STATE == S_BUSY) begin
                B_buf <= B_buf >> 2;
            end
        end
    end

    always @ (posedge clk or negedge nrst) begin
        if (~nrst) begin
            P_cur <= 68'd0;
            P_sft <= 64'd0;
        end
        else begin
            if (STATE == S_BUSY) begin
                if (count == 6'd0)
                    {P_cur, P_sft} <= {(P_cur + {E, ~E, ~E, PP}), P_sft} >> 2;
                else
                    {P_cur, P_sft} <= {(P_cur + {1'b1, E, PP}), P_sft} >> 2;
            end
            else begin
                P_cur <= 68'd0;
                P_sft <= 64'd0;
            end
        end
    end

    always @ (posedge clk or negedge nrst) begin
        if (~nrst) begin
            Ss <= 64'b0;
        end
        else begin
            if (STATE == S_BUSY) begin
                Ss <= {1'b0, S, Ss[63:2]};
            end
            else begin
                Ss <= 64'd0;
            end
        end
    end

    always @ (posedge clk or negedge nrst) begin
        if (~nrst) begin
            P <= 128'd0;
        end
        else begin
            if (STATE == S_FINISH) begin
                P <= {P_cur[63:0], P_sft} + Ss;
            end
            else if (next_state == S_LOAD) begin
                P <= 128'd0;
            end
        end
    end

endmodule
