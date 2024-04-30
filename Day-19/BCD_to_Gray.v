module BCD_to_Gray_conv (BC, G);

input  [3:0]BC;
output [3:0]G;

assign G[3] = BC[3];
assign G[2] = BC[2] | BC[3];
assign G[1] = BC[2] ^ BC[1];
assign G[0] = BC[1] ^ BC[0];

endmodule