module decoder(
  input a,b,c,d,e,f,g,
  output [3:0] o
  );

assign o[3] =( a & b & c & d & f & g);
assign o[2] = (a & ~b & c & d & f & g) |  (~a & b & c & ~d & ~e & f & g) | (a & b & c & ~d & ~e & ~f & ~g);
assign o[1] = (a & b & ~c & d & e & ~f & g) | (a & b & c & d & ~e & ~f & g) | (a & ~b & c & d & e & f & g) | (a & b & c & ~d & ~e & ~f & ~g);
assign o[0] = (b & c & ~d & ~e & ~f & ~g) | (a & b & c & d & ~e & g) | (a & ~b & c & d & ~e & f & g);
              
endmodule