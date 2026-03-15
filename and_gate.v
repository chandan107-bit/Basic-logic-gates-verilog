// AND Gate in Verilog
// Author: Chandan
// Project: Basic Logic Gates

module and_gate(
    input a,
    input b,
    output y
);
    assign y = a & b;
endmodule
