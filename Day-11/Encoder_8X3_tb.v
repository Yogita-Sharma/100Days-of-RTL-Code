module en_tb;

  reg en;
  reg [7:0] i;

  reg [7:0] y;
  
  encoder encoder_inst(en,i,y);

  initial
    begin

      $monitor("t=%0t, en=%0b, i=%0b, y=%0b", $time, en,i,y);
      #5 en=1; i=2;
      #5 en=1; i=4;
      #5 en=1; i=1;
      #5 en=0; i=4;
      $finish();
      
    end
endmodule
