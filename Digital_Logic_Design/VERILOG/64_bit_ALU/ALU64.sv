module ALU64(
    input wire[63:0] a,
    input wire[63:0] b,
    input wire[3:0] op,
    output reg[63:0] result,
    output reg overflow,
    input wire clk
    );

    always @(posedge clk) begin
        overflow = 0; // Reset overflow flag
        case(op)
        4'h0: begin // add
            result = a + b;
            // Check for overflow
            if ((a[63] == b[63]) && (result[63] != a[63])) begin
                overflow = 1;
            end
        end
        4'h1: begin // sub
            result = a - b;
            // Check for underflow
            if ((a[63] != b[63]) && (result[63] != a[63])) begin
                overflow = 1;
            end
        end
        4'h2: begin // mul
            result = a * b;
            // Check for overflow (simple check, may not cover all cases)
            if (result < a || result < b) begin
                overflow = 1;
            end
        end
        4'h3: result = a & b; // and
        4'h4: result = a | b; // or
        4'h5: result = a ^ b; // xor
        4'h6: result = ~a;    // not A
        4'h7: result = a << b; // shift left
        4'h8: result = a >> b; // shift right
        4'h9: result = a >>> b; // arithmetic shift right
        4'hA: result = (a >> b) | (a << (64 - b)); // rotate right
        4'hB: result = (a << b) | (a >> (64 - b)); // rotate left
        4'hC: result = 0; // reserved
        4'hD: result = 0; // reserved
        4'hE: result = 0; // reserved
        4'hF: result = 0; // reserved
        endcase
    end
endmodule