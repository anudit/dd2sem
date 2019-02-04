module lab4(
    Data_in_A,
    Data_in_B,
    Data_out_Sum,
    Data_out_Carry
    );

	input Data_in_A;
	input Data_in_B;

	output Data_out_Sum;
	output Data_out_Carry;

	assign Data_out_Sum = Data_in_A ^ Data_in_B;
	assign Data_out_Carry = Data_in_A & Data_in_B;
 
endmodule
