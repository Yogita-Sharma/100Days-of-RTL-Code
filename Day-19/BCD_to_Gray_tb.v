module BCD_to_Gray_conv_tb ();

reg   [3:0] BC;
wire  [3:0] G;

BCD_to_Gray_conv DUT (.BC(BC), .G(G));

integer i;

initial
begin
  for(i=0; i<10; i=i+1)
  begin
    BC = i;
    $display ("The BCD code is = %b", BC);
    #20;
    $display ("The Equivalent Gray code is = %b", G);
  end

 for(i=10; i<16; i=i+1)
  begin
    BC = 4'bxxxx;
    $display ("The BCD code is = %b", BC);
    #20;
    $display ("The Equivalent Gray code is = %b", G);
  end
end
endmodule