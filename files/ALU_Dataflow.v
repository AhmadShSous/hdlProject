module ALU_Dataflow(A,B,Cin,OpCode,result,carry_out,carrysub_out,overflow);
input [3:0]A,B;
input [2:0]OpCode;
input Cin;
output [3:0]result;
output overflow;
output carry_out,carrysub_out;
wire wire_And ,wire_OR ,wire_Addition ,wire_Subtraction;
Bitwise_OR G1(A,B,wire_OR);
Bitwise_AND G2(A,B,wire_And);
Addition(A,B,Cin,wire_Addition,carry_out);
Subtraction(A,B,Cin,wire_Subtraction,carrysub_out,overflow);

assign result=(OpCode==3'b000)? wire_Addition:
(OpCode==3'b001)? wire_Subtraction:
(OpCode==3'b010)? wire_And: 
(OpCode==3'b011)? wire_OR:3'bz;
 
endmodule 