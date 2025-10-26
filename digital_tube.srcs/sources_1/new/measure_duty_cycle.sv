`timescale 1ns / 1ps

module measure_duty_cycle #(
    parameter int WIDTH = 10,
    parameter int CLK_FREQUENCY = 10000000,
    parameter int COUNTER_WIDTH = 24,
    parameter logic [WIDTH-1:0] HIGH_THRESHOLD = WIDTH'(550),
    parameter logic [WIDTH-1:0] LOW_THRESHOLD = WIDTH'(500)
) (
    input  logic                     clk,
    input  logic                     rst_n,
    input  logic [        WIDTH-1:0] ad_pin,
    output logic [COUNTER_WIDTH-1:0] duty_cycle_decimal,
    output logic                     duty_cycle_valid
);

  logic [WIDTH-1:0] ad_data;
  logic voltage_level;

  ad #(
      .WIDTH(WIDTH)
  ) u_ad (
      .clk    (clk),
      .ad_pin (ad_pin),
      .ad_data(ad_data)
  );

  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      voltage_level <= 1'b0;
    end else begin
      if (!voltage_level) begin
        if (ad_data >= HIGH_THRESHOLD) voltage_level <= 1'b1;
      end else begin
        if (ad_data <= LOW_THRESHOLD) voltage_level <= 1'b0;
      end
    end
  end

  logic [COUNTER_WIDTH-1:0] clk_counter;
  logic [COUNTER_WIDTH-1:0] high_time_counter;

  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      clk_counter <= '0;
      high_time_counter <= '0;
      duty_cycle_decimal <= '0;
      duty_cycle_valid <= 1'b0;
    end else begin
      if (clk_counter == {COUNTER_WIDTH{1'd1}}) begin
        clk_counter <= 0;
        high_time_counter <= 0;
        duty_cycle_decimal <= high_time_counter;
        duty_cycle_valid <= 1'b1;
      end else begin
        clk_counter <= clk_counter + 1'b1;
        duty_cycle_valid <= 1'b0;

        if (voltage_level) begin
          high_time_counter <= high_time_counter + 1'b1;
        end
      end
    end
  end

endmodule  //measure_duty_cycle
