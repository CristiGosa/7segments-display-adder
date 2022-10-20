module separator_tb;
  reg [4:0] inp;
  wire [3:0] z;
  wire [3:0] u;
  
  separator UUT(
    .inp(inp),
    .z(z),
    .u(u)
    );
initial begin
  inp = 5'b00000;
end

always begin
  if(inp < 5'b10010)
     #2 inp = inp + 5'b00001;
   else
     #2 inp = 5'b00001;
   end
 endmodule
