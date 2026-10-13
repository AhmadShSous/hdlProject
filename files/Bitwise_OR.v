module Bitwise_OR(A,B,result);
input [3:0]A;
input [3:0]B;
output [3:0]result;
or G0(result[0],A[0],B[0]);
or G1(result[1],A[1],B[1]);
or G2(result[2],A[2],B[2]);
or G3(result[3],A[3],B[3]);
endmodule 
