module gray_to_bin_conv_tb ();

reg   [3:0] G;
wire  [3:0] B;

gray_to_bin_conv DUT (.G(G), .B(B));

integer i;

initial
begin
  for(i=0; i<15; i=i+1)
  begin
    G = i;
    $display ("Gray code = %0b", G);
    #20;
  end
end

initial
  $monitor ("Binary code = %0b", B);

endmodule