module Full_Adder(A,B,C,Sum,carry_out);
input A,B,C;
output Sum,carry_out;
wire W0,W1,W2;
xor G_XOR1(W0, A, B);
xor G_XOR2(Sum, W0, C);
and G_AND1(W1, A, B);
and G_AND2(W2, W0, C);
or G_OR(carry_out, W1, W2);
endmodule 