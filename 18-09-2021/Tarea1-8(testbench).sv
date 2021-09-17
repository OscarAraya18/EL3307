`timescale 1ns/1ps

module tb_sistema;
  
  wire H;
  reg A,B,C,D;
  
  sistema sistema1(
    .A(A),
    .B(B),
    .C(C),
    .D(D),
    .H(H)
  );
  
  initial begin
    A=0;
    B=0;
    C=0;
    D=0;
    repeat (15) begin
      #10
      {A,B,C,D} = {A,B,C,D}+1;
    end
    #10
    $finish;
  end
  
  initial begin 
    $display("A B C D | H");
    $monitor("%b %b %b %b | %b",A,B,C,D,H);
  end
  
  initial begin
    $dumpfile("tb_sistema.vcd");
    $dumpvars(0,tb_sistema);
  end
  
endmodule