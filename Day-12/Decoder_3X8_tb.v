module decoder_tb;
  wire [7:0] y;
  reg en;
  reg [2:0] i1;
  integer i;

  decoder_3x8 dut(en,i1,y);

initial
  begin  
    $monitor( "t=%0t, en=%b, i1=%d, y=%b ", $time, en, i1, y);
      #5 en=1; i1=2;
      #5 en=1; i1=4;
      #5 en=1; i1=1;
      #5 en=0; i1=4;
      #5 en=0; i1=2;
      $finish();
      
end
endmodule