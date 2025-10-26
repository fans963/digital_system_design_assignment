`timescale 1ns / 1ps

module frequency_counter #(
    parameter int WIDTH = 10,
    parameter int CLK_FREQUENCY = 10000000,
    parameter int MEASUREMENT_PERIOD = 10000000,
    parameter int MAX_FREQUENCY = 2000000,
    parameter logic [WIDTH-1:0] HIGH_AMPLITUDE = WIDTH'(550),
    parameter logic [WIDTH-1:0] LOW_AMPLITUDE = WIDTH'(500)
) (
    input logic clk,
    input logic rst_n,
    input logic [WIDTH-1:0] ad_pin,
    output logic [$clog2(MAX_FREQUENCY+1)-1:0] frequency
);

  logic [WIDTH-1:0] ad_data;
  logic [$clog2(MEASUREMENT_PERIOD+1)-1:0] clk_counter;
  logic [$clog2(MAX_FREQUENCY+1)-1:0] frequency_counter;

  logic ampl_high;
  logic ampl_high_d;

  ad #(
      .WIDTH(WIDTH)
  ) u_ad (
      .clk    (clk),
      .ad_pin (ad_pin),
      .ad_data(ad_data)
  );

  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      ampl_high <= 1'b0;
      ampl_high_d <= 1'b0;
      clk_counter <= '0;
      frequency_counter <= '0;
      frequency <= '0;
    end else begin
      if (!ampl_high) begin
        if (ad_data >= HIGH_AMPLITUDE) ampl_high <= 1'b1;
      end else begin
        if (ad_data <= LOW_AMPLITUDE) ampl_high <= 1'b0;
      end

      ampl_high_d <= ampl_high;

      if (clk_counter == MEASUREMENT_PERIOD - 1) begin
        clk_counter <= '0;
        frequency <= frequency_counter;
        frequency_counter <= '0;
      end else begin
        clk_counter <= clk_counter + 1'b1;

        if (ampl_high & ~ampl_high_d) begin
          frequency_counter <= frequency_counter + 1'b1;
        end
      end
    end
  end

endmodule

module frequency_fft #(
    parameter int WIDTH = 10,
    parameter int FFT_SIZE = 8192,
    parameter int CLK_FREQUENCY = 10000000,
    parameter int MAX_FREQUENCY = 5000000
) (
    input logic clk,
    input logic rst_n,
    input logic [WIDTH-1:0] ad_pin,
    output logic [$clog2(MAX_FREQUENCY+1)-1:0] frequency,
    output logic frequency_valid
);

  logic [WIDTH-1:0] ad_data;
  logic [$clog2(FFT_SIZE)-1:0] sample_cnt;

  ad #(
      .WIDTH(WIDTH)
  ) u_ad (
      .clk    (clk),
      .ad_pin (ad_pin),
      .ad_data(ad_data)
  );

  logic [$clog2(FFT_SIZE)-1:0] window_addr;
  logic [15:0] window_coeff;

  assign window_addr = sample_cnt;

  hann_window_rom u_hann_rom (
      .clka (clk),
      .addra(window_addr),
      .douta(window_coeff)
  );

  logic signed [15:0] ad_data_signed;
  logic signed [15:0] window_coeff_signed;
  logic signed [31:0] windowed_product;
  logic mult_valid;

  assign ad_data_signed = $signed({6'b0, ad_data});

  assign window_coeff_signed = $signed(window_coeff);

  window_mult u_window_mult (
      .CLK(clk),
      .SCLR(~rst_n),
      .CE(s_axis_data_tready),
      .A(window_coeff_signed),
      .B(ad_data_signed),
      .P(windowed_product)
  );

  logic [3:0] tready_delay;
  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) tready_delay <= '0;
    else tready_delay <= {tready_delay[2:0], s_axis_data_tready};
  end
  assign mult_valid = tready_delay[3];  

  logic [7:0] s_axis_config_tdata;
  logic s_axis_config_tvalid;

  logic [31:0] s_axis_data_tdata;
  logic s_axis_data_tvalid;
  logic s_axis_data_tlast;

  assign s_axis_config_tdata = 8'b0000_0001;  
  assign s_axis_config_tvalid = 1'b1;

  assign s_axis_data_tdata = {16'b0, windowed_product[30:15]};
  assign s_axis_data_tvalid = mult_valid;

  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      sample_cnt <= '0;
    end else begin
      if (s_axis_data_tready) begin
        sample_cnt <= sample_cnt + 1'b1;
      end
    end
  end

  assign s_axis_data_tlast = (sample_cnt == FFT_SIZE - 1);

  logic [31:0] m_axis_data_tdata;
  logic m_axis_data_tvalid;
  logic m_axis_data_tlast;

  ad_fft u_ad_fft (
      .aclk(clk),
      .s_axis_config_tdata(s_axis_config_tdata),
      .s_axis_config_tvalid(s_axis_config_tvalid),
      .s_axis_data_tdata(s_axis_data_tdata),
      .s_axis_data_tvalid(s_axis_data_tvalid),
      .s_axis_data_tready(s_axis_data_tready),
      .s_axis_data_tlast(s_axis_data_tlast),
      .m_axis_data_tdata(m_axis_data_tdata),
      .m_axis_data_tvalid(m_axis_data_tvalid),
      .m_axis_data_tlast(m_axis_data_tlast)
  );

  logic signed [15:0] fft_real;
  logic signed [15:0] fft_imag;

  assign fft_real = $signed(m_axis_data_tdata[15:0]);
  assign fft_imag = $signed(m_axis_data_tdata[31:16]);

  logic [31:0] real_squared;
  logic [31:0] imag_squared;
  logic mult_real_valid;
  logic mult_imag_valid;

  real_square_mult u_real_mult (
      .CLK(clk),
      .SCLR(~rst_n),
      .CE(m_axis_data_tvalid),
      .A(fft_real),
      .B(fft_real),
      .P(real_squared)
  );

  imag_square_mult u_imag_mult (
      .CLK(clk),
      .SCLR(~rst_n),
      .CE(m_axis_data_tvalid),
      .A(fft_imag),
      .B(fft_imag),
      .P(imag_squared)
  );

  logic [1:0] tvalid_mag_delay;
  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) tvalid_mag_delay <= '0;
    else tvalid_mag_delay <= {tvalid_mag_delay[0], m_axis_data_tvalid};
  end

  logic [31:0] magnitude_squared;
  logic magnitude_valid;

  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      magnitude_squared <= '0;
      magnitude_valid   <= 1'b0;
    end else begin
      magnitude_squared <= real_squared + imag_squared;
      magnitude_valid   <= tvalid_mag_delay[1];
    end
  end

  logic [31:0] max_magnitude;
  logic [$clog2(FFT_SIZE)-1:0] max_bin_index;
  logic [$clog2(FFT_SIZE)-1:0] bin_counter;

  logic [31:0] mag_prev;
  logic [31:0] mag_curr;
  logic [31:0] mag_next;

  logic [31:0] mag_prev_temp;
  logic [$clog2(FFT_SIZE)-1:0] prev_max_index;

  typedef enum logic [2:0] {
    IDLE,
    SEARCHING,
    INTERPOLATING,
    DONE
  } state_t;

  state_t state;

  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      state <= IDLE;
      max_magnitude <= '0;
      max_bin_index <= '0;
      bin_counter <= '0;
      mag_prev <= '0;
      mag_curr <= '0;
      mag_next <= '0;
      mag_prev_temp <= '0;
      prev_max_index <= '0;
      frequency_valid <= 1'b0;
    end else begin
      case (state)
        IDLE: begin
          frequency_valid <= 1'b0;
          max_magnitude <= '0;
          max_bin_index <= '0;
          bin_counter <= '0;
          mag_prev_temp <= '0;
          prev_max_index <= '0;

          if (magnitude_valid) begin
            state <= SEARCHING;
          end
        end

        SEARCHING: begin
          if (magnitude_valid) begin
            if (bin_counter > 0 && bin_counter < (FFT_SIZE / 2)) begin
              if (magnitude_squared > max_magnitude) begin
                mag_prev <= mag_prev_temp;
                mag_curr <= magnitude_squared;
                max_magnitude <= magnitude_squared;
                prev_max_index <= max_bin_index;
                max_bin_index <= bin_counter;
              end else if (bin_counter == max_bin_index + 1) begin
                mag_next <= magnitude_squared;
              end
              mag_prev_temp <= magnitude_squared;
            end

            bin_counter <= bin_counter + 1'b1;

            if (m_axis_data_tlast) begin
              state <= INTERPOLATING;
            end
          end
        end

        INTERPOLATING: begin
          state <= DONE;
        end

        DONE: begin
          frequency_valid <= 1'b1;
          state <= IDLE;
        end

        default: state <= IDLE;
      endcase
    end
  end

  logic signed [49:0] rife_numerator;
  logic signed [32:0] rife_denominator;
  logic [71:0] delta_quotient_full;
  logic signed [31:0] delta_quotient;
  logic rife_div_valid;
  logic rife_div_ready;

  logic start_division;
  assign start_division = (state == INTERPOLATING);

  always_comb begin
    // δ = (mag_next - mag_prev) / (2*mag_curr - mag_prev - mag_next)
    rife_numerator = ($signed({1'b0, mag_next}) - $signed({1'b0, mag_prev})) <<< 16;
    rife_denominator = ($signed({1'b0, mag_curr}) <<< 1) - $signed({1'b0, mag_prev}) -
        $signed({1'b0, mag_next});
  end

  rife_vincent_div u_divider (
      .aclk(clk),
      .aclken(1'b1),
      .aresetn(rst_n),
      .s_axis_dividend_tdata(rife_numerator),
      .s_axis_dividend_tvalid(start_division),
      .s_axis_dividend_tready(rife_div_ready),
      .s_axis_divisor_tdata(rife_denominator),
      .s_axis_divisor_tvalid(start_division),
      .m_axis_dout_tdata(delta_quotient_full),
      .m_axis_dout_tvalid(rife_div_valid)
  );

  assign delta_quotient = $signed(delta_quotient_full[31:0]);

  logic signed [15:0] delta_fractional;
  logic [47:0] freq_integer_part;
  logic signed [47:0] freq_fractional_part;

  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      delta_fractional <= '0;
      frequency <= '0;
    end else begin
      if (rife_div_valid) begin
        if (delta_quotient > 32'h0000_FFFF) delta_fractional <= 16'hFFFF;
        else if (delta_quotient < -32'h0001_0000) delta_fractional <= -16'h10000;
        else delta_fractional <= delta_quotient[15:0];

        // f = (k + δ) × Fs / N
        // = k × Fs / N + δ × Fs / N
        freq_integer_part = (max_bin_index * CLK_FREQUENCY) >> $clog2(FFT_SIZE);
        freq_fractional_part = ($signed(delta_fractional) * CLK_FREQUENCY) >>
            ($clog2(FFT_SIZE) + 16);

        frequency <= freq_integer_part + freq_fractional_part;
      end
    end
  end

endmodule
