module decoder_tb;
  reg a,b,c,d,e,f,g;
  wire [3:0] o;
  
  decoder UUT(
    .a(a),
    .b(b),
    .c(c),
    .d(d),
    .e(e),
    .f(f),
    .g(g),
    .o(o));
    
  initial begin
       a = 1'b1; b=1'b1; c=1'b1; d=1'b1; e=1'b1; f=1'b1; g=1'b0;
     end
     
     always begin
     #10 a = 1'b0; b=1'b1; c=1'b1; d=1'b0; e=1'b0; f=1'b0; g=1'b0; //1
     #10 a = 1'b0; b=1'b1; c=1'b1; d=1'b0; e=1'b0; f=1'b1; g=1'b1; //4  
     #10 a = 1'b1; b=1'b0; c=1'b1; d=1'b1; e=1'b1; f=1'b1; g=1'b1; //6
     #10 a = 1'b1; b=1'b1; c=1'b1; d=1'b0; e=1'b0; f=1'b0; g=1'b0; //7
     #10 a = 1'b1; b=1'b1; c=1'b1; d=1'b1; e=1'b1; f=1'b1; g=1'b1; //8
     end
     
   endmodule
  
