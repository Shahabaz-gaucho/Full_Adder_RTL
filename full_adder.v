module half_adder(A,B,S,C);
input A,B; //input A,B
output S,C; //output Sum,Carry
assign S=A^B;
assign C=A&B;
endmodule

module full_adder(A,B,Cin,S,C); //Full adder using 2 Half adders
input A,B,Cin;
output S,C;
wire t1,t2,t3;
half_adder ha1(A,B,t2,t1); //Input A,B and Output wire (t1 and t2)
half_adder ha2(t2,Cin,S,t3); //Input t2.Cin and Output wire t3 and S
assign C= t1|t3; //OR-ing t1(C of HA1) and t3(C of HA2)
endmodule