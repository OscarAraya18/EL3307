// Implementacion secuencial o procedural
module mux21 (input d0,d1,sel, output regq);
  always @(*)
    if(sel==0) q=d0;
  	else q=d1;
endmodule

// Implementacion estructural mediante compuertas primitivas
module mux21 (input d0,d1,sel, output q);
  wire n0,n1,selNeg;
  not U1(selNeg,sel);
  and U2(n0,selNeg,d0);
  and U3(n1,sel,d1);
  or U4(q,n0,n1);
endmodule


// Implementacion con asignacion continua y ecuaciones booleanas
module mux21 (input d0,d1,sel, output q);
  assign q = (d0&(~sel))|(d1&sel);
endmodule

// Implementacion con asignacion continua y operador condicional
module mux21 (input d0,d1,sel, output q);
  assign q = sel?d1:d0;
endmodule