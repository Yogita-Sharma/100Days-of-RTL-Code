module fs_tb;
  reg A,B,Bin;
  wire D,Bout;
  
  full_sub full_sub_inst(A,B,Bin,D,Bout);
  initial
    begin
      #2 $monitor("t=%0t, A=%0b, B=%0b, Bin=%0b, D=%0b, Bout=%0b", $time,A,B,Bin,D,Bout);
      
      #3 A=0; B=0; Bin=0;
      #5 A=0; B=0; Bin=1;
      #5 A=0; B=1; Bin=0;
      #5 A=0; B=1; Bin=1;
      #5 A=1; B=0; Bin=0;
      #5 A=1; B=0; Bin=1;
      #5 A=1; B=1; Bin=0;
      #5 A=1; B=1; Bin=1;
      #50;
    end
endmodule

