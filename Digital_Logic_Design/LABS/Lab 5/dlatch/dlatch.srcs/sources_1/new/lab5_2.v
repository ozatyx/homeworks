module D_latch(
    input d,
    input c, 
    output reg q, 
    output reg qbar   
    );


always @(d or c) begin
    if (c) begin
        q <= d;
        qbar <= ~d;
    end
end
endmodule
