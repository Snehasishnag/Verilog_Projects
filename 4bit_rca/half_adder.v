module half_adder(
    input a,
    input b,
    output sum,
    output carry
);

xor x1(sum,a,b);

and a1(carry,a,b);
endmodule