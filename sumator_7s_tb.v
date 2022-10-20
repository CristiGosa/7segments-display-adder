module sumator_7s_tb;
  reg [6:0] input1, input2;
  wire [6:0] output1, output2;
  
  sumator_7s UUT(
     .input1(input1),
     .input2(input2),
     .output1(output1),
     .output2(output2)
     );
     
     initial begin
       input1 = 7'b1111110;
       input2 = 7'b1111110;
     end
     
     always begin
     #10 input1 = 7'b0110000; //1
         input2 = 7'b0110011; //4
         //5
         
     #10 input1 = 7'b1011111; //6
         input2 = 7'b1110000; //7
         //13
         
     #10 input1 = 7'b1111111; //8
         input2 = 7'b1101101; //2
         //10
   end
endmodule
