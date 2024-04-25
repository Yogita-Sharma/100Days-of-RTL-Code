module compar_r#(parameter n = 32)(
  input [n-1:0]a,b,
  output reg gr, lo, eq);
  
  always@(*)
    begin
      if(a>b)
        begin
          gr = 1'b1;
          lo = 1'b0;
          eq = 1'b0;
        end
      else if(a<b)
        begin
          gr = 1'b0;
          lo = 1'b1;
          eq = 1'b0;
        end
      else
        begin
          gr = 1'b0;
          lo = 1'b0;
          eq
          
          = 1'b1;
        end
    end
endmodule