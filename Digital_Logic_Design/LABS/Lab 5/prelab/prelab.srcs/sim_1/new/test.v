
module SR_latch_tb();
    reg s, r;
    wire q, qbar;

    SR_latch uut (.s(s), .r(r), .q(q), .qbar(qbar));


    initial begin
        s = 0; r = 0; #10;
        s = 0; r = 1; #10;
        s = 1; r = 0; #10;
        s = 1; r = 1; #10;
        $finish;
    end
endmodule
