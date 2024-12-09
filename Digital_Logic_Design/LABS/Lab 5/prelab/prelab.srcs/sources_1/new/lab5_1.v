module SR_latch(
    input s,
    input r,
    output reg q,
    output reg qbar
);


always @(s, r)
begin
    if (s == 1'b0 && r == 1'b0)
    begin
        // no change
        q <= q;
        qbar <= qbar;
    end
    else if (s == 1'b0 && r == 1'b1)
    begin
        q <= 1'b0;
        qbar <= 1'b1;
    end
    else if (s == 1'b1 && r == 1'b0)
    begin
        q <= 1'b1;
        qbar <= 1'b0;
    end
    else if (s == 1'b1 && r == 1'b1)
    begin
        // invalid state
        q <= 1'bx;
        qbar <= 1'bx;
    end
end


endmodule
