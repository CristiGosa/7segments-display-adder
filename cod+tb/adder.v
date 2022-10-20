module adder
	(input c_in,
	input [3:0] a, b,
	output [4:0] s
	);
	
	wire c_int1, c_int2, c_int3;
	
	full_adder
		f0
		(.a(a[0]),
		.b(b[0]),
		.c_in(1'b0),
		.s(s[0]),
		.c_out(c_int1));
		
	full_adder
		f1
		(.a(a[1]),
		.b(b[1]),
		.c_in(c_int1),
		.s(s[1]),
		.c_out(c_int2));
		
	full_adder
		f2
		(.a(a[2]),
		.b(b[2]),
		.c_in(c_int2),
		.s(s[2]),
		.c_out(c_int3));
	full_adder
		f3
		(.a(a[3]),
		.b(b[3]),
		.c_in(c_int3),
		.s(s[3]),
		.c_out(s[4]));
		
endmodule
  
  
