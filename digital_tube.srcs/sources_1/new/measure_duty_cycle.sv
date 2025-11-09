`timescale 1ns / 1ps

module measure_duty_cycle #(
    parameter int WIDTH = 10,
    parameter int CLK_FREQUENCY = 10000000,
    parameter int COUNTER_WIDTH = 24
) (
    input  logic                     clk,
    input  logic                     rst_n,
    input  logic [        WIDTH-1:0] ad_pin,
    output logic [COUNTER_WIDTH-1:0] duty_cycle_decimal,
    output logic                     duty_cycle_valid
);

  logic [WIDTH-1:0] ad_data;
  logic voltage_level;

  logic [WIDTH-1:0] max_value, min_value, adaptive_threshold;
  logic [COUNTER_WIDTH-1:0] sample_counter;

  ad #(
      .WIDTH(WIDTH)
  ) u_ad (
      .clk    (clk),
      .ad_pin (ad_pin),
      .ad_data(ad_data)
  );
  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      max_value <= '0;
      min_value <= {WIDTH{1'b1}};
      sample_counter <= '0;
    end else begin
      sample_counter <= sample_counter + 1;
      if (ad_data > max_value) max_value <= ad_data;
      if (ad_data < min_value) min_value <= ad_data;
      if (sample_counter == {COUNTER_WIDTH{1'd1}}) begin
        max_value <= ad_data;
        min_value <= ad_data;
        sample_counter <= '0;
      end
    end
  end

  assign adaptive_threshold = min_value + ((max_value - min_value) >> 1);

  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      voltage_level <= 1'b0;
    end else begin
      if (!voltage_level) begin
        if (ad_data >= adaptive_threshold) voltage_level <= 1'b1;
      end else begin
        if (ad_data < adaptive_threshold) voltage_level <= 1'b0;
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
