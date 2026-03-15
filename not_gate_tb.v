module testbench;
    reg a;
    wire y;

    not_gate uut(.a(a), .y(y));

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, testbench);
    end

    initial begin
        $display("=== NOT Gate Truth Table ===");
        $display("A  |  Y");
        $display("---|----");

        a=0; #10;
        $display("%b  |  %b", a, y);

        a=1; #10;
        $display("%b  |  %b", a, y);

        $display("=== Simulation Complete ===");
        $finish;
    end
endmodule
