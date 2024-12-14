////////////////////////////////////////
//Author: Chance Reyes
//Sources: Stack Overflow, Github Copilot
//
//
////////////////////////////////////////
module ALU64(
    input wire[63:0] a,
    input wire[63:0] b,
    input wire[3:0] op,
    output reg[63:0] result,
    output reg overflow,
    input wire clk
    );

    always @(posedge clk) begin
        overflow = 0;
        case(op)
        
        4'h0: begin // add
            result = a + b;

            if ((a[63] == b[63]) && (result[63] != a[63])) begin
                overflow = 1;
            end
        end
        
        4'h1: begin // subtract
            result = a - b;

            if ((a[63] != b[63]) && (result[63] != a[63])) begin
                overflow = 1;
            end
        end
        
        4'h2: begin // multiply
            result = a * b;
            
            if (a != 0 && b != 0 && (result / a != b)) begin
                overflow = 1;
            end
        end
        
        // operations that return 0 are unused
        4'h3: result = a & b;
        4'h4: result = a | b;
        4'h5: result = a ^ b;
        4'h6: result = ~a;
        4'h7: result = a << b;
        4'h8: result = a >> b;
        4'h9: result = 0;
        4'hA: result = (a >> b) | (a << (64 - b)); // rotate right
        4'hB: result = (a << b) | (a >> (64 - b)); // rotate left
        4'hC: result = 0;
        4'hD: result = 0;
        4'hE: result = 0;
        4'hF: result = 0;
        endcase
    end
endmodule