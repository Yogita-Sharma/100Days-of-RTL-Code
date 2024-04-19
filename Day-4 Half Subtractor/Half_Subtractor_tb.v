module hs_tb;
  reg A,B;
  wire D1,B1,D2,B2;
  
  half_sub half_sub_inst(A,B,D1,D2,B1,B2);
  initial
    begin
      $monitor("t=%0t, A=%0b, B=%0b, D1=%0b, B1=%0b, D2=%0b, B2=%0b",$time,A,B,D1,D2,B1,B2);
      
      #5 A=0; B=0;
      #5 A=0; B=1;
      #5 A=1; B=0;
      #5 A=1; B=1;
      #10;
    end
  
   initial 
    begin
      $dumpfile("dump.vcd");
      $dumpvars();
    end
endmodule

