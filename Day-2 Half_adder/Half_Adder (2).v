module half_adder(a,b,s,c);
input a,b;
output s,c;
xor s1(s,a,b);
and c1(c,a,b);
endmodule