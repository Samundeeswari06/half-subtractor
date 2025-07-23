// Code your testbench here
// or browse Examples
module tb_half_subtractor;
  reg A, B;
  wire diff, borrow;
  half_subtractor hs (
    .A(A),
    .B(B),
    .diff(diff),
    .borrow(borrow)
  );
  initial begin
    $monitor("Time=%0d A=%b B=%b => diff=%b borrow=%b", $time, A, B, diff, borrow);
    A = 0; B = 0; #10;
    A = 0; B = 1; #10;
    A = 1; B = 0; #10;
    A = 1; B = 1; #10;
    $finish;
  end 
endmodule