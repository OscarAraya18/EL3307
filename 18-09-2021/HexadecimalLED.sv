module hexadecimalLED(numeroMostrar,LED);
  
  // Se define la entrada de tipo wire de 4 bits de ancho, que es el numero a mostrar
  input wire [3:0] numeroMostrar;
  
  // Se define la salida de tipo reg de 7 bits de ancho, que es cada segmento del display LED
  output reg [6:0] LED;
  
  // Siempre, cuando alguna entrada cambia, se ejecuta lo siguiente
  always @(*) begin
    
    // En caso de que el numero a mostrar cambie a alguno de los siguientes valores, se ejecuta lo siguiente
    case(numeroMostrar)
    
      // Se va mostrando el numero en el display LED
      4'h0: LED[6:0] = 7'b1111110;
      4'h1: LED[6:0] = 7'b0110000;
      4'h2: LED[6:0] = 7'b1101110;
      4'h3: LED[6:0] = 7'b1111001;
      4'h4: LED[6:0] = 7'b0110011;
      4'h5: LED[6:0] = 7'b1011011;
      4'h6: LED[6:0] = 7'b1011111;
      4'h7: LED[6:0] = 7'b1110000;
      4'h8: LED[6:0] = 7'b1111111;
      4'h9: LED[6:0] = 7'b1111011;
      4'ha: LED[6:0] = 7'b1110111;
      4'hb: LED[6:0] = 7'b0011111;
      4'hc: LED[6:0] = 7'b1001110;
      4'hd: LED[6:0] = 7'b0111101;
      4'he: LED[6:0] = 7'b1001111;
      
      // El caso por defecto es numeroMostrar = 4'hf
      default: LED[6:0] = 7'b1000111; 
    
   	// Cerramos el case
    endcase
  
  // Cerramos el bloque always
  end

endmodule