module mux_4X1( in,sel,out);
  
input [3:0]in;
input [1:0]sel;
  
output reg out;

always @(*)
	begin
      
		case(sel)
			2'b00: out=in[0];
			2'b01: out=in[1];
			2'b10: out=in[2];
			2'b11: out=in[3];
			default: out=1'b0;
		endcase
      
	end
endmodule