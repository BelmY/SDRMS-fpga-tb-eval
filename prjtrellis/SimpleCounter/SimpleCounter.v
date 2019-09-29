module SimpleCounter (
  input clk,
  output led0,
  output led1,
  output led2
);
  reg [25:0] counter;
  always @(posedge clk) counter <= counter + 1;

  assign led0 = counter[23];
  assign led1 = counter[24];
  assign led2 = counter[25];

endmodule
