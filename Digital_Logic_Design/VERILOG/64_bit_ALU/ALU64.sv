module ALU64(
    input wire[63:0] a,
    input wire[63:0] b,
    input wire[3:0] op,
    output reg[63:0] result,
    input wire clk
    );

    always @(posedge clk) begin
        case(op)
        4'h0: result = a + b;
        4'h1: result = a - b;
        4'h2: result = a * b;
        4'h3: result = a & b;
        4'h4: result = a | b;
        4'h5: result = a ^ b;
        4'h6: result = ~a;
        4'h7: result = a << b;
        4'h8: result = a >> b;
        4'h9: result = a >>> b;
        4'hA: result = (a >> b) | (a << (64 - b));
        4'hB: result = (a << b) | (a >> (64 - b));
        4'hC:result = 0;
        4'hD:result = 0;
        4'hE:result = 0;
        4'hF:result = 0;
        endcase
    end
endmodule