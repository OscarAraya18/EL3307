`timescale 1ns/1ps

module multiplexor2a1(a,b,s,o);
  
  // Entradas del multiplexor
  input a;
  input b;
  
  // Bit de selección
  input s;
  
  // Salida del multiplexor
  output o;
  
  // Asignación de la salida. Esto lo podemos leer como "si s, entonces o=b, sino o=a"
  assign o = s?b:a;
  
endmodule



module sistema(input A,B,C,D, output H);
  wire X;
  assign X = C|((~B)&(~D));
  multiplexor2a1(.a(X),.b(~B),.s(A),.o(H));
endmodule

