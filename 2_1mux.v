module mux2_1(O,A,B,sel);
// if sel = 0, O = A
// if sel = 1, O =B
output reg O;
input wire A;
input wire B;
input wire sel;
not #(50) not1(nsel,sel);
and #(50) and1(O1,A,nsel); 
and #(50) and2(O2,B,sel);
or #(50) or2(O,O1,O2);
endmodule