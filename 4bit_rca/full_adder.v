
module full_adder(
    input a,
    input b,
    input cin,
    output sum,
    output carry
);
wire w1,w2,w3;
half_adder ha1(a,b,w1,w2);
half_adder ha2(w1,cin,sum,w3);
or r1(carry,w2,w3);
endmodule