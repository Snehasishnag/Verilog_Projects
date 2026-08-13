module bcd(input[0:3] a_bcd,
input [0:3] b_bcd,
output[0:3] sum_bcd,
input cin,
output cout
);
wire [0:3] s;
wire c_1;
rca cw1 (
    a_bcd,
    b_bcd,
    0,
    s,
    c_1
);
wire s1,s2,s3,s4,s5,s6,s7;
and a1(s5,s1,s2);
and a2(s6,s3,s4);
or o1(s7,s5,s6);
wire [0:3] rca_2;
assign rca_2[0]=0;
assign rca_2[1]=s7;
assign rca_2[2]=s7;
assign rca_2[3]=0;
rca cw2(
    s,
    rca_2,
    cin,
    sum_bcd,
    cout
);



endmodule

module rca(
    input [3:0] a,
    input [3:0] b,
    input cin,
    output [3:0] sum,
    output cout
);
wire w1,w2,w3;
full_adder fa1(a[0],b[0],cin,sum[0],w1);
full_adder fa2(a[1],b[1],cin,sum[1],w2);
full_adder fa3(a[2],b[2],cin,sum[2],w3);
full_adder fa4(a[3],b[3],cin,sum[3],cout);
endmodule 

module full_adder(
    input a,
    input b,
    input cin,
    output sum,
    output carry
);
wire w1,w2,w3;
assign cin=0;
half_adder ha1(a,b,w1,w2);
half_adder ha2(w1,cin,sum,w3);
or r1(carry,w2,w3);
endmodule
module half_adder(
    input a,
    input b,
    output sum,
    output carry
);

xor x1(sum,a,b);

and a1(carry,a,b);
endmodule