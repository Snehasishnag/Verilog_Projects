`timescale 1ns/1ps

module rca_tb;

    reg [3:0] a;
    reg [3:0] b;
    reg cin;

    wire [3:0] sum;
    wire cout;

    // RCA instance
    rca uut (
        .a(a),
        .b(b),
        .cin(cin),
        .sum(sum),
        .cout(cout)
    );

    // Generate waveform
    initial begin
        $dumpfile("rca.vcd");
        $dumpvars(0, rca_tb);
    end

    initial begin

        $display(" A     B    Cin | Cout  Sum");
        $display("----------------------------");

        a = 4'b0000;
        b = 4'b0000;
        cin = 1'b0;
        #10;

        a = 4'b0001;
        b = 4'b0010;
        cin = 1'b0;
        #10;

        a = 4'b0101;
        b = 4'b0011;
        cin = 1'b0;
        #10;

        a = 4'b1111;
        b = 4'b0001;
        cin = 1'b0;
        #10;

        a = 4'b1010;
        b = 4'b0101;
        cin = 1'b1;
        #10;

        a = 4'b1111;
        b = 4'b1111;
        cin = 1'b0;
        #10;

        a = 4'b1111;
        b = 4'b1111;
        cin = 1'b1;
        #10;

        $finish;
    end

    initial begin
        $monitor("A=%b B=%b Cin=%b | Cout=%b Sum=%b",
                 a, b, cin, cout, sum);
    end

endmodule