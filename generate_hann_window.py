#!/usr/bin/env python3
"""
生成 Hann 窗系数的 COE 文件，用于 Vivado Block Memory Generator IP
"""

import numpy as np

# 参数配置
FFT_SIZE = 8192  # 改为 8192（节省 BRAM）
OUTPUT_FILE = 'hann_window_8192.coe'

# 生成 Hann 窗
window = np.hanning(FFT_SIZE)

# 转换为 Q1.15 定点格式 (1位符号，15位小数)
# Hann 窗范围 [0, 1]，最大值 1.0
window_fixed = np.round(window * 32767).astype(np.int16)

# 写入 COE 文件
with open(OUTPUT_FILE, 'w') as f:
    f.write('; Hann Window Coefficients for FFT Size {}\n'.format(FFT_SIZE))
    f.write('; Format: Q1.15 (1 sign bit, 15 fractional bits)\n')
    f.write('; Range: [0, 32767] representing [0.0, 1.0]\n')
    f.write('memory_initialization_radix=10;\n')
    f.write('memory_initialization_vector=\n')
    
    for i, val in enumerate(window_fixed):
        if i < len(window_fixed) - 1:
            f.write(f'{val},\n')
        else:
            f.write(f'{val};')

print(f'✓ 已生成 {OUTPUT_FILE}')
print(f'  - FFT 大小: {FFT_SIZE}')
print(f'  - 格式: Q1.15 定点数')
print(f'  - 窗系数范围: [0, {max(window_fixed)}]')
print(f'  - 文件大小: {len(window_fixed)} 个系数')
