module sistema(X, Y, clk);
  input wire X;
  input wire clk;
  output reg Y;
  
  reg Q0;
  reg Q1;
  
  reg D0;
  reg D1;
  
  reg A;
  reg B;
  reg C;
  
  always @(posedge clk)
    begin    
      Q0 <= D0;	
      Q1 <= D1;
    end
  
  always @(*)
    begin
      assign A = ~X;
      assign B = Q0&Q1;
      assign C = Q0|Q1;
      assign D0 = ~(X|B);
      assign D1 = A&C;
      assign Y = ~((~Q0)|(Q1));
    end
  
endmodule