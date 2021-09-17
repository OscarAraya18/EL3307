`timescale 1ns/1ps

module tb_multiplexor2a1;
  
  wire salida;
  reg [2:0] sab;
  
  multiplexor2a1 multiplexor(
    .s(sab[2]),
    .a(sab[1]),
    .b(sab[0]),
    .o(salida)
  );
  
  initial begin
    sab = 0;
    repeat (7) begin
      #10
      sab = sab+1;
    end
    #10
    $finish;
  end
  
  initial begin 
    $monitor("t=%3ds=%b,a=%b,b=%b,salida=%b",$time,sab[2],sab[1],sab[0],salida);
  end
  
  initial begin
    $dumpfile("tb_multiplexor2a1.vcd");
    $dumpvars(0,tb_multiplexor2a1);
  end
  
endmodule