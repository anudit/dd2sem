module adder(A,B,M,S,C);
input[3:0]A,B;
input M;
output[3:0]S;
output C;
wire c1,c2,c3;
full  fa1(.Data_in_A(A[0]),.Data_in_B(B[0]^M),.Data_in_C(M),.Data_out_Sum(S[0]),.Data_out_Carry(c1));
full  fa2(.Data_in_A(A[1]),.Data_in_B(B[1]^M),.Data_in_C(c1),.Data_out_Sum(S[1]),.Data_out_Carry(c2));
full  fa3(.Data_in_A(A[2]),.Data_in_B(B[2]^M),.Data_in_C(c2),.Data_out_Sum(S[2]),.Data_out_Carry(c3));
full  fa4(.Data_in_A(A[3]),.Data_in_B(B[3]^M),.Data_in_C(c3),.Data_out_Sum(S[3]),.Data_out_Carry(C));
endmodule

module test;
reg [3:0]A,B;
reg M;
wire [3:0]S;
wire C;
adder DUT(A,B,M,S,C);
initial
begin
A[0]=0;A[1]=1;A[2]=0;A[3]=1;B[0]=0;B[1]=0;B[2]=1;B[3]=1;M=0;
#10;
A[0]=0;A[1]=1;A[2]=0;A[3]=1;B[0]=0;B[1]=0;B[2]=1;B[3]=1;M=1;
end
endmodule