`timescale 1ns / 1ps

module ad #(
    parameter int WIDTH = 10
) (
    input logic clk,
    input logic [WIDTH-1:0] ad_pin,
    output logic [WIDTH-1:0] ad_data
);

  always_ff @(posedge clk) begin
    ad_data <= ad_pin;
  end

endmodule
