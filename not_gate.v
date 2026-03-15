// NOT Gate in Verilog
// Author: Chandan Gupta
// Project: Basic Logic Gates

module not_gate(
    input a,
    output y
);
    assign y = ~a;
endmodule
