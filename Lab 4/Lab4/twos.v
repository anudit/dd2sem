module twos(a1, a2, a3, a4, o1, o2, o3, o4);

	input a1, a2, a3, a4;
	output o1, o2, o3, o4;
	wire c1, c2, c3, c4;
	assign c0 = 1;
	half_adder ha1(.a(~a1), .b(c0), .sum(o1), .carry(c1));
	half_adder ha2(.a(~a2), .b(c1), .sum(o2), .carry(c2));
	half_adder ha3(.a(~a3), .b(c2), .sum(o3), .carry(c3));
	half_adder ha4(.a(~a4), .b(c3), .sum(o4), .carry(c4));
	
endmodule
