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

  typedef enum logic [3:0] {
    IDLE           = 4'd0,
    COLLECT        = 4'd1,
    PROCESS        = 4'd2,
    INTERPOLATE    = 4'd3,
    CALC_NUM_DEN   = 4'd4,
    CALC_DELTA     = 4'd5,
    CALC_OFFSET    = 4'd6,
    CALC_FREQ_MULT = 4'd7,
    CALC_FREQ_DIV  = 4'd8,
    DONE           = 4'd9
  } state_t;

  state_t state, next_state;

  logic [WIDTH-1:0] ad_data;
  logic [$clog2(FFT_SIZE)-1:0] sample_cnt;
  logic [15:0] hann_coeff;
  logic signed [15:0] ad_data_signed, hann_coeff_signed;
  logic signed [31:0] windowed_product;
  logic [3:0] mult_delay;

  logic s_axis_data_tready, s_axis_data_tvalid, s_axis_data_tlast;
  logic [31:0] s_axis_data_tdata;
  logic [31:0] m_axis_data_tdata;
  logic m_axis_data_tvalid, m_axis_data_tlast;

  logic signed [15:0] fft_real, fft_imag;
  logic signed [31:0] real_squared, imag_squared;
  logic [32:0] magnitude_squared;
  logic magnitude_valid;
  logic [1:0] tvalid_mag_delay;

  logic [12:0] bin_counter;
  logic [32:0] mag_prev, mag_curr, mag_next;
  logic [12:0] bin_prev, bin_curr, bin_next;
  logic [32:0] peak_magnitude;
  logic [32:0] peak_mag_prev, peak_mag_curr, peak_mag_next;
  logic [12:0] peak_bin;

  logic signed [34:0] alpha, beta, gamma;
  logic signed [35:0] delta_num, delta_den;
  logic signed [63:0] delta_calc;
  logic signed [31:0] delta;  // Q16.16 
  logic signed [47:0] interpolated_bin;

  logic signed [63:0] freq_temp;
  logic [127:0] freq_calc;

  ad #(
      .WIDTH(WIDTH)
  ) u_ad (
      .clk(clk),
      .ad_pin(ad_pin),
      .ad_data(ad_data)
  );

  hann_window_rom u_hann_rom (
      .clka (clk),
      .addra(sample_cnt),
      .douta(hann_coeff)
  );

  assign ad_data_signed = $signed({1'b0, ad_data} - 10'd512) <<< 5;
  assign hann_coeff_signed = $signed({1'b0, hann_coeff[14:0]});

  window_mult u_window_mult (
      .CLK(clk),
      .SCLR(~rst_n),
      .CE(state == COLLECT && s_axis_data_tready),
      .A(hann_coeff_signed),
      .B(ad_data_signed),
      .P(windowed_product)
  );

  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) mult_delay <= '0;
    else mult_delay <= {mult_delay[2:0], (state == COLLECT && s_axis_data_tready)};
  end

  assign s_axis_data_tvalid = mult_delay[3];
  assign s_axis_data_tdata  = {16'b0, windowed_product[30:15]};
  assign s_axis_data_tlast  = (sample_cnt == FFT_SIZE - 1) && mult_delay[3];

  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) sample_cnt <= '0;
    else if (state == IDLE) sample_cnt <= '0;
    else if (state == COLLECT && s_axis_data_tready) begin
      sample_cnt <= (sample_cnt == FFT_SIZE - 1) ? '0 : sample_cnt + 1;
    end
  end

  ad_fft u_ad_fft (
      .aclk(clk),
      .s_axis_config_tdata(8'b0000_0001),
      .s_axis_config_tvalid(1'b1),
      .s_axis_data_tdata(s_axis_data_tdata),
      .s_axis_data_tvalid(s_axis_data_tvalid),
      .s_axis_data_tready(s_axis_data_tready),
      .s_axis_data_tlast(s_axis_data_tlast),
      .m_axis_data_tdata(m_axis_data_tdata),
      .m_axis_data_tvalid(m_axis_data_tvalid),
      .m_axis_data_tlast(m_axis_data_tlast)
  );

  assign fft_real = $signed(m_axis_data_tdata[15:0]);
  assign fft_imag = $signed(m_axis_data_tdata[31:16]);

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

  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) tvalid_mag_delay <= '0;
    else tvalid_mag_delay <= {tvalid_mag_delay[0], m_axis_data_tvalid};
  end
  assign magnitude_valid = tvalid_mag_delay[1];

  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      magnitude_squared <= '0;
    end else if (tvalid_mag_delay[0]) begin
      magnitude_squared <= $unsigned(real_squared) + $unsigned(imag_squared);
    end
  end

  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) state <= IDLE;
    else state <= next_state;
  end

  always_comb begin
    next_state = state;
    case (state)
      IDLE: if (s_axis_data_tready) next_state = COLLECT;
      COLLECT:
      if (s_axis_data_tlast && s_axis_data_tvalid && s_axis_data_tready) next_state = PROCESS;
      PROCESS: if (m_axis_data_tlast && magnitude_valid) next_state = INTERPOLATE;
      INTERPOLATE: next_state = CALC_NUM_DEN;
      CALC_NUM_DEN: next_state = CALC_DELTA;
      CALC_DELTA: next_state = CALC_OFFSET;
      CALC_OFFSET: next_state = CALC_FREQ_MULT;
      CALC_FREQ_MULT: next_state = CALC_FREQ_DIV;
      CALC_FREQ_DIV: next_state = DONE;
      DONE: next_state = IDLE;
      default: next_state = IDLE;
    endcase
  end

  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) bin_counter <= '0;
    else if (state == IDLE || state == COLLECT) bin_counter <= '0;
    else if (state == PROCESS && magnitude_valid) begin
      bin_counter <= bin_counter + 1;
    end
  end

  always_ff @(posedge clk or negedge rst_n) begin
    if (!rst_n) begin
      mag_prev <= 0;
      mag_curr <= 0;
      mag_next <= 0;
      bin_prev <= 0;
      bin_curr <= 0;
      bin_next <= 0;
      peak_magnitude <= 0;
      peak_bin <= 0;
      peak_mag_prev <= 0;
      peak_mag_curr <= 0;
      peak_mag_next <= 0;
      alpha <= 0;
      beta <= 0;
      gamma <= 0;
      delta_num <= 0;
      delta_den <= 0;
      delta_calc <= 0;
      delta <= 0;
      interpolated_bin <= 0;
      freq_temp <= 0;
      frequency <= 0;
      frequency_valid <= 0;
    end else begin
      case (state)
        IDLE: begin
          mag_prev <= 0;
          mag_curr <= 0;
          mag_next <= 0;
          bin_prev <= 0;
          bin_curr <= 0;
          bin_next <= 0;
          peak_magnitude <= 0;
          peak_bin <= 0;
          peak_mag_prev <= 0;
          peak_mag_curr <= 0;
          peak_mag_next <= 0;
          frequency_valid <= 0;
        end
        PROCESS: begin
          if (magnitude_valid) begin
            if (bin_curr >= 2 && bin_curr < FFT_SIZE / 2 - 1) begin
              if (mag_curr > mag_prev && mag_curr > mag_next && mag_curr > peak_magnitude) begin
                peak_magnitude <= mag_curr;
                peak_bin <= bin_curr;
                peak_mag_prev <= mag_prev;
                peak_mag_curr <= mag_curr;
                peak_mag_next <= mag_next;
              end
            end

            mag_prev <= mag_curr;
            mag_curr <= mag_next;
            mag_next <= magnitude_squared;
            bin_prev <= bin_curr;
            bin_curr <= bin_next;
            bin_next <= bin_counter;
          end
        end
        INTERPOLATE: begin
          alpha <= $signed({2'b00, peak_mag_prev});
          beta  <= $signed({2'b00, peak_mag_curr});
          gamma <= $signed({2'b00, peak_mag_next});
        end
        CALC_NUM_DEN: begin
          delta_num <= alpha - gamma;
          delta_den <= (beta <<< 1) - alpha - gamma;  // 2β - α - γ
        end
        CALC_DELTA: begin
          if (delta_den != 0) begin
            delta_calc <= ($signed(delta_num) * 64'sd65536) / $signed(delta_den);
            delta <= delta_calc[31:0];
          end else begin
            delta_calc <= 0;
            delta <= 0;
          end
        end
        CALC_OFFSET: begin
          interpolated_bin <= ($signed({35'b0, peak_bin}) <<< 16) + delta;
        end
        CALC_FREQ_MULT: begin
          freq_calc <= CLK_FREQUENCY * $unsigned(interpolated_bin);
        end
        CALC_FREQ_DIV: begin
          freq_temp <= (freq_calc >>> 16) / FFT_SIZE;
        end
        DONE: begin
          frequency <= freq_temp[$clog2(MAX_FREQUENCY+1)-1:0];
          frequency_valid <= 1;
        end
        default: begin
        end
      endcase
    end
  end

endmodule
