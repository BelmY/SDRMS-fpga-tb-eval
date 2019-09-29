module SimpleCounter (
  output USBPU,
  input CLK,
  output PIN_11,
  output PIN_12,
  output PIN_13,
  output LED
);
  assign USBPU = 0;
  reg [25:0] counter;
  always @(posedge CLK) counter <= counter + 1;

  assign LED = counter[20];
  assign PIN_11 = counter[23];
  assign PIN_12 = counter[24];
  assign PIN_13 = counter[25];

endmodule
