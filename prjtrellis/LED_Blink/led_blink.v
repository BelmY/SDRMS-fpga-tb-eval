module top(input clk, output led);
    localparam ctr_width = 22;
    reg [0:ctr_width-1] ctr = 0;
    always@(posedge clk) begin
      ctr <= ctr + 1;
    end
    assign led = ctr[0];
endmodule
