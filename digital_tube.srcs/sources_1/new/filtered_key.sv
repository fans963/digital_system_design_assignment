`timescale 1ns / 1ps

module filtered_key #(
    parameter int COUNTER_BIT_WIDTH = 5
) (
    input  logic clk,
    input  logic rst_n,
    input  logic key_pin,
    output logic key_pushed
);

  logic [COUNTER_BIT_WIDTH-1:0] counter;

  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      counter <= '0;
      key_pushed <= 1'b0;
    end else begin
      if (key_pin) begin
        if (counter == {COUNTER_BIT_WIDTH{1'b1}}) begin
          key_pushed <= 1'b1;
        end else begin
          counter <= counter + 1'b1;
          key_pushed <= 1'b0;
        end
      end else begin
        counter <= '0;
        key_pushed <= 1'b0;
      end
    end
  end

endmodule  //filtered_key
