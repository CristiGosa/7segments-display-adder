module separator(
  input [4:0] inp,
  output [3:0] z,
  output [3:0] u
  );
  
  assign z[0] = (inp[3] & inp[1]) | (inp[3] & inp[2]) | (inp[4]);
  assign z[1] = 1'b0; assign z[2] = 1'b0; assign z[3] = 1'b0;
  
  assign u[3] =(inp[3] & ~inp[2] & ~inp[1]) | (inp[4] & inp[1]);  
  assign u[2] = (~inp[3] & inp[2]) | (inp[2] & inp[1]) | (inp[4] & ~inp[1]);
  assign u[1] = (~inp[4] & ~inp[3] & inp[1]) | (inp[3] & inp[2] & ~inp[1]) | (inp[4] & ~inp[1]);
  assign u[0] = (inp[0]);
  
endmodule
