module lab5_2tb(
    );
    reg d;
    reg c;
    wire q;
    wire qbar;


    D_latch D_latch(d,c,q,qbar);


    initial begin
        c = 0; d = 0; #10;
        c = 1; d = 0; #10;
        c = 1; d = 1; #10;
        c = 0; d = 1; #10;


        $finish;
    end
endmodule
