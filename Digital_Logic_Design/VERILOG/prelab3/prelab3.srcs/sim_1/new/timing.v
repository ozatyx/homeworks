
module tb_gray_encoder;

    // Declare inputs to the DUT (Device Under Test)
    reg [2:0] binary_in;

    // Declare outputs from the DUT
    wire g2, g1, g0;

    // Instantiate the DUT (gray_encoder module)
    gray_encoder dut (
        .binary_in(binary_in),
        .g2(g2),
        .g1(g1),
        .g0(g0)
    );

    // Test stimulus
    initial begin
        // Display header for the simulation results
        $display("Binary Input | Gray Output");
        $display("-------------|------------");

        // Apply all binary inputs from 000 to 111
        for (binary_in = 0; binary_in < 8; binary_in = binary_in + 1) begin
            #10;  // Wait for 10 time units
            $display("   %b        |   %b%b%b", binary_in, g2, g1, g0);
        end

        // End simulation
        $stop;
    end

endmodule