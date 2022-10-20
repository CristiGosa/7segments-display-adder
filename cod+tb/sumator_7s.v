module sumator_7s(
  input [6:0] input1, input2,
  output [6:0] output1, output2
  );
  
  wire [3:0] w0, w1, w3, w4;
  wire [4:0] w2;
  
  decoder dec1(
     .a(input1[6]),
     .b(input1[5]),
     .c(input1[4]),
     .d(input1[3]),
     .e(input1[2]),
     .f(input1[1]),
     .g(input1[0]),
     .o(w0));
     
  decoder dec2(
     .a(input2[6]),
     .b(input2[5]),
     .c(input2[4]),
     .d(input2[3]),
     .e(input2[2]),
     .f(input2[1]),
     .g(input2[0]),
     .o(w1));
  
  adder addr(
     .c_in(1'b0),
     .a(w0),
     .b(w1),
     .s(w2));
     
  separator sep(
     .inp(w2),
     .z(w3),
     .u(w4));
     
  decoder_rev decr1(
     .in(w3),
     .a(output1[6]),
     .b(output1[5]),
     .c(output1[4]),
     .d(output1[3]),
     .e(output1[2]),
     .f(output1[1]),
     .g(output1[0]));
     
     
     decoder_rev decr2(
     .in(w4),
     .a(output2[6]),
     .b(output2[5]),
     .c(output2[4]),
     .d(output2[3]),
     .e(output2[2]),
     .f(output2[1]),
     .g(output2[0]));
     
   endmodule
     
     