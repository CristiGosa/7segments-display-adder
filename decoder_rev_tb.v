module decoder_rev_tb;
  
  reg [3:0] in;
  wire a,b,c,d,e,f;
  
  decoder_rev UUT(
    .in(in),
    .a(a),
    .b(b),
    .c(c),
    .d(d),
    .e(e),
    .f(f),
    .g(g)
    );
    
initial begin
   in = 4'b0000;
 end
 
 always begin
   if(in < 4'b1001)
     #2 in = in + 4'b0001;
   else
     #2 in = 4'b0000;
   end
 endmodule
     
     
     
