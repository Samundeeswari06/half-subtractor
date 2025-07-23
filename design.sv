// Code your design here
module half_subtractor (
  input A,
  input B,
  output diff,
  output borrow
);
  assign diff = A ^ B;
  assign borrow = (-A) & B;
endmodule