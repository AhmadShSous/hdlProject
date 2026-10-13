module Addition(A,B,C0,S,cout);
input [3:0]A;
input [3:0]B;
input C0;
output [3:0]S;
output cout;
wire c1,c2,c3;
Full_Adder FA_0(A[0],B[0],C0,S[0],C1);
Full_Adder FA_1(A[1],B[1],C1,S[1],C2);
Full_Adder FA_2(A[2],B[2],C2,S[2],C3);
Full_Adder FA_3(A[3],B[3],C3,S[3],cout);

endmodule