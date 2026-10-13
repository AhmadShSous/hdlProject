module Bitwise_AND(A,B,result);
input [3:0]A;
input [3:0]B;
output [3:0]result;
and G0(result[0],A[0],B[0]);
and G1(result[1],A[1],B[1]);
and G2(result[2],A[2],B[2]);
and G3(result[3],A[3],B[3]);
endmodule