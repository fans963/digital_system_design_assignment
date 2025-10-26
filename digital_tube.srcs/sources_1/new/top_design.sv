`timescale 1ns / 1ps

module top (
    input  logic        rst,
    input  logic        clk_in,
    input  logic [ 7:0] left_switch_pins,
    input  logic [ 7:0] right_switch_pins,
    input  logic [ 1:0] keys,
    input  logic [ 9:0] ad_input_pin,
    output logic        ad_clk,
    output logic        led2_pin,
    output logic        led3_pin,
    output logic [ 3:0] left_gnd_pins,
    output logic [ 6:0] left_seg_pins,
    output logic        left_p_pin,
    output logic [ 3:0] right_gnd_pins,
    output logic [ 6:0] right_seg_pins,
    output logic        right_p_pin,
    output logic        da_clk,
    output logic [13:0] da_input_pin
);
  logic rst_n;
  assign rst_n = ~rst;

  logic clk_1Khz;
  logic clk_10Mhz;
  logic clk_1_25Mhz;

  logic [7:0] left_switch_array_status;
  logic [7:0] right_switch_array_status;

  logic [4:0] display_numbers[0:7];

  logic [13:0] da_frequency_integer;
  logic [7:0] da_frequency_decimal;
  logic [13:0] da_10M_frequency_integer;
  logic [7:0] da_10M_frequency_decimal;
  logic [13:0] da_1_25M_frequency_integer;
  logic [7:0] da_1_25M_frequency_decimal;
  logic [20:0] ad_frequency_integer;
  logic [22:0] fft_frequency;
  logic fft_frequency_valid;
  logic [23:0] duty_cycle_decimal;
  logic duty_cycle_valid;

  logic [3:0] da_integer_bcd[0:4];
  logic [3:0] da_decimal_bcd[0:2];
  logic [3:0] ad_integer_bcd[0:4];
  logic [3:0] fft_integer_bcd[0:7];
  logic [3:0] duty_cycle_decimal_bcd[0:1];

  logic [2:0] push_button_shift;
  logic [1:0] key_pushed;
  logic [1:0] key_pushed_d;

  filtered_key #(
      .COUNTER_BIT_WIDTH(5)
  ) u_filtered_key_0 (
      .clk       (clk_1Khz),
      .rst_n     (rst_n),
      .key_pin   (keys[0]),
      .key_pushed(key_pushed[0])
  );
  filtered_key #(
      .COUNTER_BIT_WIDTH(5)
  ) u_filtered_key_1 (
      .clk       (clk_1Khz),
      .rst_n     (rst_n),
      .key_pin   (keys[1]),
      .key_pushed(key_pushed[1])
  );

  always_ff @(posedge clk_1Khz or negedge rst_n) begin
    if (!rst_n) begin
      key_pushed_d <= '0;
      push_button_shift <= '0;
    end else begin
      key_pushed_d <= key_pushed;

      if (key_pushed[0] && !key_pushed_d[0]) begin
        if (right_switch_array_status == 8'b00010000)
          if (push_button_shift != 3'd7) push_button_shift <= push_button_shift + 1'b1;
      end

      if (key_pushed[1] && !key_pushed_d[1]) begin
        if (right_switch_array_status == 8'b00010000)
          if (push_button_shift != 3'd0) push_button_shift <= push_button_shift - 1'b1;
      end
    end
  end

  logic [7:0] dds_K_input;

  always_comb begin
    case (right_switch_array_status)
      8'b00000001: begin
        dds_K_input = left_switch_array_status;
        da_frequency_integer = da_10M_frequency_integer;
        da_frequency_decimal = da_10M_frequency_decimal;
      end
      8'b00010000: begin
        dds_K_input = (left_switch_array_status << 3) + push_button_shift;
        da_frequency_integer = da_1_25M_frequency_integer;
        da_frequency_decimal = da_1_25M_frequency_decimal;
      end
      default: begin
        dds_K_input = '0;
        da_frequency_integer = '0;
        da_frequency_decimal = '0;
      end
    endcase
  end

  dds_frequency_calculator u_dds_frequency_calculator_10M (
      .k                (dds_K_input),
      .frequency_decimal(da_10M_frequency_decimal),
      .frequency_integer(da_10M_frequency_integer)
  );

  dds_frequency_calculator #(
      .CLK_FREQUENCY(1250000)
  ) u_dds_frequency_calculator_1_25M (
      .k                (dds_K_input),
      .frequency_decimal(da_1_25M_frequency_decimal),
      .frequency_integer(da_1_25M_frequency_integer)
  );


  integer_bin_to_bcd #(
      .bin_width(14),
      .bcd_width(5)
  ) u_integer_bin_to_bcd (
      .binary(da_frequency_integer),
      .bcd   (da_integer_bcd)
  );
  integer_bin_to_bcd #(
      .bin_width(21),
      .bcd_width(5)
  ) u_integer_bin_to_bcd_1 (
      .binary(ad_frequency_integer),
      .bcd   (ad_integer_bcd)
  );
  integer_bin_to_bcd #(
      .bin_width(23),
      .bcd_width(8)
  ) u_fft_integer_bin_to_bcd (
      .binary(fft_frequency),
      .bcd   (fft_integer_bcd)
  );
  decimal_bin_to_bcd #(
      .bin_width(8),
      .bcd_width(3)
  ) u_decimal_bin_to_bcd (
      .binary_fraction(da_frequency_decimal),
      .bcd            (da_decimal_bcd)
  );
  decimal_bin_to_bcd #(
      .bin_width(24),
      .bcd_width(2)
  ) u_decimal_bin_to_bcd_2 (
      .binary_fraction(duty_cycle_decimal),
      .bcd            (duty_cycle_decimal_bcd)
  );


  always_comb begin
    case (right_switch_array_status)
      8'b00000000: begin
        display_numbers = '{
            {1'b0, 4'd7},
            {1'b0, 4'd1},
            {1'b0, 4'd6},
            {1'b0, 4'd0},
            {1'b1, 4'd5},
            {1'b0, 4'd2},
            {1'b0, 4'd0},
            {1'b0, 4'd2}
        };
      end
      8'b00000001: begin
        display_numbers = '{
            {1'b0, da_decimal_bcd[2]},
            {1'b0, da_decimal_bcd[1]},
            {1'b0, da_decimal_bcd[0]},
            {1'b1, da_integer_bcd[0]},
            {1'b0, da_integer_bcd[1]},
            {1'b0, da_integer_bcd[2]},
            {1'b0, da_integer_bcd[3]},
            {1'b0, da_integer_bcd[4]}
        };
      end
      8'b00000010: begin
        display_numbers = '{
            {1'b0, 4'd0},
            {1'b0, 4'd0},
            {1'b0, 4'd0},
            {1'b1, ad_integer_bcd[0]},
            {1'b0, ad_integer_bcd[1]},
            {1'b0, ad_integer_bcd[2]},
            {1'b0, ad_integer_bcd[3]},
            {1'b0, ad_integer_bcd[4]}
        };
      end
      8'b00000100: begin
        display_numbers = '{
            {1'b1, fft_integer_bcd[0]},
            {1'b0, fft_integer_bcd[1]},
            {1'b0, fft_integer_bcd[2]},
            {1'b0, fft_integer_bcd[3]},
            {1'b0, fft_integer_bcd[4]},
            {1'b0, fft_integer_bcd[5]},
            {1'b0, fft_integer_bcd[6]},
            {1'b0, fft_integer_bcd[7]}
        };
      end
      8'b00001000: begin
        display_numbers = '{
            {1'b0, duty_cycle_decimal_bcd[1]},
            {1'b0, duty_cycle_decimal_bcd[0]},
            {1'b1, 4'd0},
            {1'b0, 4'd0},
            {1'b0, 4'd0},
            {1'b0, 4'd0},
            {1'b0, 4'd0},
            {1'b0, 4'd0}
        };
      end
      8'b00010000: begin
        display_numbers = '{
            {1'b0, da_decimal_bcd[2]},
            {1'b0, da_decimal_bcd[1]},
            {1'b0, da_decimal_bcd[0]},
            {1'b1, da_integer_bcd[0]},
            {1'b0, da_integer_bcd[1]},
            {1'b0, da_integer_bcd[2]},
            {1'b0, da_integer_bcd[3]},
            {1'b0, da_integer_bcd[4]}
        };
      end
      8'b00100000: begin
        display_numbers = '{
            {1'b0, {3'b0, ad_input_pin[0]}},
            {1'b0, {3'b0, ad_input_pin[1]}},
            {1'b0, {3'b0, ad_input_pin[2]}},
            {1'b0, {3'b0, ad_input_pin[3]}},
            {1'b0, {3'b0, ad_input_pin[4]}},
            {1'b0, {3'b0, ad_input_pin[5]}},
            {1'b0, {3'b0, ad_input_pin[6]}},
            {1'b0, {3'b0, ad_input_pin[7]}}
        };
      end
      8'b01000000: begin
        display_numbers = '{
            {1'b0, {3'b0, ad_input_pin[8]}},
            {1'b0, {3'b0, ad_input_pin[9]}},
            {1'b0, {3'b0, rst}},
            {1'b0, {3'b0, rst_n}},
            {1'b0, {3'b0, key_pushed[0]}},
            {1'b0, {3'b0, key_pushed[1]}},
            {1'b0, {3'b0, 1'b0}},
            {1'b0, {3'b0, 1'b0}}
        };
      end
      default: begin
        display_numbers = '{
            {1'b0, 4'd0},
            {1'b0, 4'd0},
            {1'b0, 4'd0},
            {1'b0, 4'd0},
            {1'b0, 4'd0},
            {1'b0, 4'd0},
            {1'b0, 4'd0},
            {1'b0, 4'd0}
        };
      end
    endcase
  end

  switch_array left_switch_array (
      .switch_pins        (left_switch_pins),
      .switch_array_status(left_switch_array_status)
  );

  switch_array right_switch_array (
      .switch_pins        (right_switch_pins),
      .switch_array_status(right_switch_array_status)
  );

  frequency_divider divider_10Khz (
      .clk_in    (clk_in),
      .rst_n     (rst_n),
      .div_factor(32'd100000),
      .clk_out   (clk_1Khz)
  );

  frequency_divider divider_10Mhz (
      .clk_in    (clk_in),
      .rst_n     (rst_n),
      .div_factor(32'd10),
      .clk_out   (clk_10Mhz)
  );

  frequency_divider divider_1_25Mhz (
      .clk_in    (clk_in),
      .rst_n     (rst_n),
      .div_factor(32'd80),
      .clk_out   (clk_1_25Mhz)
  );

  assign led2_pin = clk_10Mhz;
  assign led3_pin = clk_1Khz;

  logic [4:0] right_display_numbers[0:3];
  assign right_display_numbers = '{
          display_numbers[0],
          display_numbers[1],
          display_numbers[2],
          display_numbers[3]
      };

  digital_tube_array right_digital_tube_array (
      .enable         (rst_n),
      .refresh_clk    (clk_1Khz),
      .display_numbers(right_display_numbers),
      .gnd_pins       (right_gnd_pins),
      .seg_pins       (right_seg_pins),
      .p_pin          (right_p_pin)
  );

  logic [4:0] left_display_numbers[0:3];
  assign left_display_numbers = '{
          display_numbers[4],
          display_numbers[5],
          display_numbers[6],
          display_numbers[7]
      };

  digital_tube_array left_digital_tube_array (
      .enable         (rst_n),
      .refresh_clk    (clk_1Khz),
      .display_numbers(left_display_numbers),
      .gnd_pins       (left_gnd_pins),
      .seg_pins       (left_seg_pins),
      .p_pin          (left_p_pin)
  );

  logic [7:0] da_input_data;
  logic dds_clk;
  logic dds_rst_n;
  always_comb begin
    case (right_switch_array_status)
      8'b00000001: begin
        dds_clk = clk_10Mhz;
        da_clk = clk_10Mhz;
        dds_rst_n = rst_n;
      end
      8'b00010000: begin
        dds_clk = clk_1_25Mhz;
        da_clk = clk_1_25Mhz;
        dds_rst_n = rst_n;
      end
      default: begin
        dds_clk = '0;
        da_clk = '0;
        dds_rst_n = 1'b0;
      end
    endcase
  end

  dds u_dds (
      .clk          (dds_clk),
      .rst_n        (dds_rst_n),
      .K            (dds_K_input),
      .da_input_data(da_input_data)
  );

  assign ad_clk = clk_10Mhz;
  da u_da (
      .clk          (dds_clk),
      .digital_input({da_input_data, 6'd0}),
      .da_input_pin (da_input_pin)
  );

  frequency_counter #(
      .WIDTH         (10),
      .CLK_FREQUENCY (10000000),
      .HIGH_AMPLITUDE(10'd550),
      .LOW_AMPLITUDE (10'd500)
  ) u_frequency_counter (
      .clk      (clk_10Mhz),
      .rst_n    (rst_n),
      .ad_pin   (ad_input_pin),
      .frequency(ad_frequency_integer)
  );

  frequency_fft #(
      .FFT_SIZE(16384)
  ) u_frequency_fft (
      .clk            (clk_10Mhz),
      .rst_n          (rst_n),
      .ad_pin         (ad_input_pin),
      .frequency      (fft_frequency),
      .frequency_valid(fft_frequency_valid)
  );

  measure_duty_cycle #(
      .WIDTH         (10),
      .CLK_FREQUENCY (10000000),
      .COUNTER_WIDTH (24),
      .HIGH_THRESHOLD(550),
      .LOW_THRESHOLD (500)
  ) u_measure_duty_cycle (
      .clk               (clk_10Mhz),
      .rst_n             (rst_n),
      .ad_pin            (ad_input_pin),
      .duty_cycle_decimal(duty_cycle_decimal),
      .duty_cycle_valid  (duty_cycle_valid)
  );

endmodule
