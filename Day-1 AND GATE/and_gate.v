module m1(a,b,c,d,e);
  
  input wire a,b;
  
  output reg c,e;
  
  output wire d;
  
  
  and X1(c,a,b);   
  
  assign d = a&b;  
  
      always @ (a,b)  
     begin
       
       e= a&b;
      
    end
  
endmodule
  