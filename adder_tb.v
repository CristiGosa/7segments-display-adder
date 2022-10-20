module adder_tb;
  reg [3:0] a;
  reg [3:0] b;
  reg c_in;
  wire [4:0] s;

adder UUT(
.a(a),
.b(b),
.c_in(c_in),
.s(s));

initial begin
   a = 4'b0000;
   b = 4'b0000;
   c_in = 1'b0;
 end
 
 always begin
   if(a < 4'b1001) begin
     #2 a = a + 4'b0001; 
     #2 b = b + 4'b0001;
   end
   else begin
     #2 a = 4'b0000; 
     #2 b = 4'b0000;
   end
  end
 endmodule