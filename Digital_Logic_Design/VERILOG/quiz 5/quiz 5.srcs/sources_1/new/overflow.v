`timescale 1ns / 1ps

module overflow;
    reg [31:0] inputF;
    reg [63:0] outputF;
    integer i;
    
    initial begin
        inputF = 320;
        outputF = 1;
        
        for(i = 1; i<=inputF; i = i+1) begin
            outputF = outputF*i;
        end
           
        if(outputF > 32'hFFFFFFFF) begin
            $display("overflow! result: %b", outputF);
        end else begin
            $display("no overflow! result: %b", outputF);
        end
     end
endmodule
