// `timescale 1ns / 1ps

// module frequency_counter #(
//     parameter int WIDTH = 10,
//     parameter int CLK_FREQUENCY = 10000000,
//     parameter int MEASUREMENT_PERIOD = 10000000,
//     parameter int MAX_FREQUENCY = 2000000,
//     parameter logic [WIDTH-1:0] HIGH_AMPLITUDE = WIDTH'(550),
//     parameter logic [WIDTH-1:0] LOW_AMPLITUDE = WIDTH'(500)
// ) (
//     input logic clk,
//     input logic rst_n,
//     input logic [WIDTH-1:0] ad_pin,
//     output logic [$clog2(MAX_FREQUENCY+1)-1:0] frequency
// );

//   logic [WIDTH-1:0] ad_data;
//   logic [$clog2(MEASUREMENT_PERIOD+1)-1:0] clk_counter;  
//   logic [$clog2(MAX_FREQUENCY+1)-1:0] frequency_counter;

//   logic ampl_high;
//   logic ampl_high_d;

//   ad #(
//       .WIDTH(WIDTH)
//   ) u_ad (
//       .clk    (clk),
//       .ad_pin (ad_pin),
//       .ad_data(ad_data)
//   );

//   always_ff @(posedge clk or negedge rst_n) begin
//     if (!rst_n) begin
//       ampl_high <= 1'b0;
//       ampl_high_d <= 1'b0;
//       clk_counter <= '0;
//       frequency_counter <= '0;
//       frequency <= '0;
//     end else begin
//       if (!ampl_high) begin
//         if (ad_data >= HIGH_AMPLITUDE) ampl_high <= 1'b1;
//       end else begin
//         if (ad_data <= LOW_AMPLITUDE) ampl_high <= 1'b0;
//       end

//       ampl_high_d <= ampl_high;

//       if (clk_counter == MEASUREMENT_PERIOD - 1) begin
//         clk_counter <= '0;
//         frequency <= frequency_counter;
//         frequency_counter <= '0;
//       end else begin
//         clk_counter <= clk_counter + 1'b1;

//         if (ampl_high & ~ampl_high_d) begin
//           frequency_counter <= frequency_counter + 1'b1;
//         end
//       end
//     end
//   end

// endmodule

// module frequency_fft #(
//     parameter int WIDTH = 10,
//     parameter int FFT_SIZE = 16384, 
//     parameter int CLK_FREQUENCY = 10000000,
//     parameter int MAX_FREQUENCY = 5000000
// ) (
//     input logic clk,
//     input logic rst_n,
//     input logic [WIDTH-1:0] ad_pin,
//     output logic [$clog2(MAX_FREQUENCY+1)-1:0] frequency,  
//     output logic frequency_valid
// );

//   logic [WIDTH-1:0] ad_data;
//   logic [$clog2(FFT_SIZE)-1:0] sample_cnt;

//   // ========== Step 1: AD 采样 ==========
//   ad #(
//       .WIDTH(WIDTH)
//   ) u_ad (
//       .clk    (clk),
//       .ad_pin (ad_pin),
//       .ad_data(ad_data)
//   );

//   // ========== Step 2: Hann 窗 ROM ==========
//   logic [$clog2(FFT_SIZE)-1:0] window_addr;
//   logic [15:0] window_coeff;  // Q1.15 格式

//   assign window_addr = sample_cnt;

//   hann_window_rom u_hann_rom (
//       .clka (clk),
//       .addra(window_addr),
//       .douta(window_coeff)
//   );

//   // ========== Step 3: 窗函数乘法器 ==========
//   logic signed [15:0] ad_data_signed;
//   logic signed [15:0] window_coeff_signed;
//   logic signed [25:0] windowed_product;
//   logic               mult_valid;

//   // AD 数据扩展符号位（10位扩展到16位）
//   assign ad_data_signed = {{6{ad_data[WIDTH-1]}}, ad_data};
//   assign window_coeff_signed = $signed(window_coeff);

//   window_mult u_window_mult (
//       .CLK(clk),
//       .SCLR(~rst_n),
//       .CE(s_axis_data_tready),  // 与 FFT 握手
//       .A(window_coeff_signed),
//       .B(ad_data_signed),
//       .P(windowed_product)
//   );

//   // 乘法器延迟 3 周期，需要对应延迟控制信号
//   logic [2:0] tready_delay;
//   always_ff @(posedge clk or negedge rst_n) begin
//     if (!rst_n)
//       tready_delay <= '0;
//     else
//       tready_delay <= {tready_delay[1:0], s_axis_data_tready};
//   end
//   assign mult_valid = tready_delay[2];

//   // ========== Step 4: FFT 输入准备 ==========
//   logic [7:0] s_axis_config_tdata;
//   logic s_axis_config_tvalid;
//   logic s_axis_config_tready;

//   logic [31:0] s_axis_data_tdata;
//   logic s_axis_data_tvalid;
//   logic s_axis_data_tlast;
//   logic s_axis_data_tready;

//   assign s_axis_config_tdata  = 8'b0000_0001;  // 正向 FFT
//   assign s_axis_config_tvalid = 1'b1;

//   // 从乘法器输出取高 16 位作为 FFT 输入
//   assign s_axis_data_tdata = {16'b0, windowed_product[25:10]};  // 取整数部分
//   assign s_axis_data_tvalid = mult_valid;

//   always_ff @(posedge clk or negedge rst_n) begin
//     if (!rst_n) begin
//       sample_cnt <= '0;
//     end else begin
//       if (s_axis_data_tready) begin
//         sample_cnt <= sample_cnt + 1'b1;
//       end
//     end
//   end

//   assign s_axis_data_tlast = (sample_cnt == FFT_SIZE - 1);

//   ad_fft u_ad_fft (
//       .aclk(clk),
//       .s_axis_config_tdata(s_axis_config_tdata),
//       .s_axis_config_tvalid(s_axis_config_tvalid),
//       .s_axis_config_tready(s_axis_config_tready),
//       .s_axis_data_tdata(s_axis_data_tdata),
//       .s_axis_data_tvalid(s_axis_data_tvalid),
//       .s_axis_data_tready(s_axis_data_tready),
//       .s_axis_data_tlast(s_axis_data_tlast),
//       .m_axis_data_tdata(m_axis_data_tdata),
//       .m_axis_data_tuser(m_axis_data_tuser),
//       .m_axis_data_tvalid(m_axis_data_tvalid),
//       .m_axis_data_tlast(m_axis_data_tlast),
//       .m_axis_status_tdata(m_axis_status_tdata),
//       .m_axis_status_tvalid(m_axis_status_tvalid),
//       .event_frame_started(event_frame_started),
//       .event_tlast_unexpected(event_tlast_unexpected),
//       .event_tlast_missing(event_tlast_missing),
//       .event_data_in_channel_halt(event_data_in_channel_halt)
//   );

//   logic signed [15:0] fft_real;
//   logic signed [15:0] fft_imag;

//   assign fft_real = m_axis_data_tdata[15:0];
//   assign fft_imag = m_axis_data_tdata[31:16];

//   logic [31:0] magnitude_squared;

//   always_ff @(posedge clk or negedge rst_n) begin
//     if (!rst_n) begin
//       magnitude_squared <= '0;
//     end else begin
//       if (m_axis_data_tvalid) begin
//         magnitude_squared <= (fft_real * fft_real) + (fft_imag * fft_imag);
//       end
//     end
//   end

//   logic [31:0] max_magnitude;
//   logic [$clog2(FFT_SIZE)-1:0] max_bin_index;
//   logic [$clog2(FFT_SIZE)-1:0] bin_counter;

//   typedef enum logic [1:0] {
//     IDLE,
//     SEARCHING,
//     DONE
//   } state_t;

//   state_t state;

//   always_ff @(posedge clk or negedge rst_n) begin
//     if (!rst_n) begin
//       state <= IDLE;
//       max_magnitude <= '0;
//       max_bin_index <= '0;
//       bin_counter <= '0;
//       frequency_valid <= 1'b0;
//     end else begin
//       case (state)
//         IDLE: begin
//           frequency_valid <= 1'b0;
//           max_magnitude <= '0;
//           max_bin_index <= '0;
//           bin_counter <= '0;

//           if (m_axis_data_tvalid) begin
//             state <= SEARCHING;
//           end
//         end

//         SEARCHING: begin
//           if (m_axis_data_tvalid) begin
//             if (bin_counter > 0 && bin_counter < (FFT_SIZE / 2)) begin
//               if (magnitude_squared > max_magnitude) begin
//                 max_magnitude <= magnitude_squared;
//                 max_bin_index <= bin_counter;
//               end
//             end
//             bin_counter <= bin_counter + 1'b1;

//             if (m_axis_data_tlast) begin
//               state <= DONE;
//             end
//           end
//         end

//         DONE: begin
//           frequency_valid <= 1'b1;
//           state <= IDLE;
//         end

//         default: state <= IDLE;
//       endcase
//     end
//   end

//   always_ff @(posedge clk or negedge rst_n) begin
//     if (!rst_n) begin
//       frequency <= '0;
//     end else begin
//       if (state == DONE) begin
//         frequency <= (max_bin_index * CLK_FREQUENCY) >> $clog2(FFT_SIZE);
//       end
//     end
//   end

// endmodule
