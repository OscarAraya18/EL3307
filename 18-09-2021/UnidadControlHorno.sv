/* 

Definimos nuestro modulo. Se compone de la siguiente estructura:

module <nombre del modulo> (<entradas y salidas separadas por coma>):

*/

module unidadDeControl(S,T,B,H,P,A);
  
  
  
  // Definimos S como entrada (sensor de la puerta)
  input S;
  
  // Definimos B como entrada (botón de emergencia)
  input T;
  
  // Definimos T como entrada (temporizador del horno)
  input B;
  
  
  
  // Definimos P como salida (puerta del horno)
  output H;
  
  // Definimos H como salida (horno)
  output P;
  
  // Definimos A como salida (alarma)
  output A;
  
  
  
  // Le damos un valor a la salida H, utilizando la ecuación booleana
  assign H = (~S)&(~T)&(~B);
  
  // Le damos un valor a la salida P, utilizando la ecuación booleana
  assign P = S|B;
  
  // Le damos un valor a la salida A, utilizando la ecuación booleana
  assign A = T|B;
  
  
  
// Finalizamos nuestro modulo 
endmodule



module multiplexor(A,B,C);
  input A,B;
  output C;
  
endmodule