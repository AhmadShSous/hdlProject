module Subtraction(A,B,M,Su,csub_out,over_flow);
input [3:0]A;
input [3:0]B;
input M;
output [3:0]Su;
output csub_out,over_flow;
wire C1,C2,C3;
wire [3:0]not_B;
not B0(not_B[0],B[0]);
not B1(not_B[1],B[1]);
not B2(not_B[2],B[2]);
not B3(not_B[3],B[3]);
Full_Adder FA_0(A[0],not_B[0],M,Su[0],C1);
Full_Adder FA_1(A[1],not_B[1],C1,Su[1],C2);
Full_Adder FA_2(A[2],not_B[2],C2,Su[2],C3);
Full_Adder FA_3(A[3],not_B[3],C3,Su[3],csub_out);
xor G_overflow(over_flow,C3,csub_out);
endmodule