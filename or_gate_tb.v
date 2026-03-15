module testbench;
    reg a, b;
    wire y;

    or_gate uut(.a(a), .b(b), .y(y));

    initial begin
        $dumpfile("dump.vcd");
        $dumpvars(0, testbench);
    end

    initial begin
        $display("=== OR Gate Truth Table ===");
        $display("A  B  |  Y");
        $display("------|----");

        a=0; b=0; #10;
        $display("%b  %b  |  %b", a, b, y);

        a=0; b=1; #10;
        $display("%b  %b  |  %b", a, b, y);

        a=1; b=0; #10;
        $display("%b  %b  |  %b", a, b, y);

        a=1; b=1; #10;
        $display("%b  %b  |  %b", a, b, y);

        $display("=== Simulation Complete ===");
        $finish;
    end
endmodule




