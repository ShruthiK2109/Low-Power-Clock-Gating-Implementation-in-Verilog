# Low-Power-Clock-Gating-Implementation-in-Verilog

This project implements a clock gating circuit using Verilog to demonstrate a fundamental low-power design technique commonly used in digital systems. Clock gating helps reduce dynamic power consumption by selectively disabling the clock signal to idle components, thereby minimizing unnecessary switching activity.

Clock gating is a technique used in digital design to disable the clock signal to portions of the circuit that do not need to operate at a given time. Instead of sending the main clock (clk) directly to every module, a gated clock (gclk) is generated based on an enable signal (en). If en is high, the module receives the clock; otherwise, the clock is shut off.


Files Included:

gated_clock.v: Verilog code implementing the clock gating logic.

gated_clock_tb.v: Testbench that simulates different en conditions and generates waveforms.

Simulation done in Cadence Xcelium and Modelsim.

Advantages & Significance of Clock Gating:

1. Reduces Power Consumption: Saves dynamic power by disabling the clock to inactive modules.

2. Improves Energy Efficiency: Essential for low-power applications like mobile and embedded systems.

3. Minimizes Switching Activity: Prevents unnecessary toggling of flip-flops and logic.

4. Enhances Thermal Performance: Less switching means lower heat generation.

5. Industry-Relevant: Widely used in ASICs, SoCs, and FPGA designs to meet power budgets.
