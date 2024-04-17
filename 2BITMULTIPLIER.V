module ha(a,b,sum,carry);
input a,b;
output sum,carry;
xor g1(sum,a,b);
and g2(carry,a,b);
endmodule

module mul_2(A,B,C);
input [1:0]A,B;
output [3:0]C;
wire w1,w2,w3,w4;
and g1(C[0],A[0],B[0]);
and g2(w1,A[0],B[1]);
and g3(w2,A[1],B[0]);
and g4(w3,A[1],B[1]);
ha ha1(w1,w2,C[1],w4);
ha ha2(w4,w3,C[2],C[3]);
endmodule

