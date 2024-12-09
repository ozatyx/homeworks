`timescale 1ns / 1ps
module gray_encoder (
    input [2:0] binary_in,  
    output g2,              
    output g1,              
    output g0               
);

    assign g2 = binary_in[2];

 
    mux mux_g1(
        .in(8'b00001111),   
        .sel(binary_in[2:0]),
        .out(g1)             
    );
    
    mux mux_g0(
        .in(8'b00110110),   
        .sel(binary_in[2:0]),
        .out(g0)            
    );

endmodule

module mux(
    input [7:0] in,      
    input [2:0] sel,     
    output reg out   
);

always @(*) begin
    case(sel)
        3'b000: out = in[0];  
        3'b001: out = in[1]; 
        3'b010: out = in[2];  
        3'b011: out = in[3]; 
        3'b100: out = in[4]; 
        3'b101: out = in[5];  
        3'b110: out = in[6];
        3'b111: out = in[7];
    endcase
end

endmodule