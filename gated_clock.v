module gated_clock (
    input  wire clk,     // input clock
    input  wire en,      // enable signal
    output wire gclk     // gated clock
);

    reg en_latch;

    // Latch is transparent when clk is low
    always @ (clk or en) begin
        if (~clk)
            en_latch <= en;
    end

    // AND gate to generate gated clock
    assign gclk = clk & en_latch;

endmodule