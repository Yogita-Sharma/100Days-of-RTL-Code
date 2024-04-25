module RCA_tb;
  
  reg [4:0] a,b,cin;
  wire [4:0] sum, cout;

  
  
  RCA inst(a,b,cin,sum,cout);
  
  initial
    begin
      
      $monitor("t=%0t, a=%0b, b=%0b, cin=%0b, sum=%0b, cout=%0b",$time, a,b,cin,sum,cout);
      
    #2 a=4'b0000; b=4'b0000; cin=4'b0000;
      
    #2 a=4'b0001; b=4'b1111; cin=4'b0010;
      
    #4 a=4'b1011; b=4'b0010; cin=4'b1100;
     
    #6 a=4'b1010; b=4'b1000; cin=4'b1100;
      
      $finish();
      
       end
  
  initial 
    begin
      $dumpfile("dump.vcd");
      $dumpvars();
    end
  
endmodule


