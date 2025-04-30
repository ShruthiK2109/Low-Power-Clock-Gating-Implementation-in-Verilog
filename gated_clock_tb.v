`timescale 1ns/1ps

module tb_gated_clock;

    reg clk;
    reg en;
    wire gclk;

    // Instantiate the module
    gated_clock uut (
        .clk(clk),
        .en(en),
        .gclk(gclk)
    );

    // Clock generation: 10ns period
    initial begin
        clk = 0;
        forever #5 clk = ~clk;
    end

    // Stimulus
    initial begin
        // Initialize
        en = 0;

        // Dump file setup for waveform
        $dumpfile("gated_clock.vcd");
        $dumpvars(0, tb_gated_clock);

        // Apply stimuli
        #10 en = 1;  // enable gated clock
        #30 en = 0;  // disable
        #20 en = 1;  // enable again
        #40 $finish; // end simulation
    end

endmodule