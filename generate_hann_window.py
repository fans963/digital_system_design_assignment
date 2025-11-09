import numpy as np

FFT_SIZE = 8192  # FFT 大小
OUTPUT_FILE = 'digital_tube.srcs/data/hann_window_8192.coe'

n = np.arange(FFT_SIZE)
window = 0.5 * (1 - np.cos(2 * np.pi * n / (FFT_SIZE - 1)))

window_fixed = np.clip(np.round(window * 32767), 0, 32767).astype(np.uint16)

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
print(f'  - 窗系数范围: [{min(window_fixed)}, {max(window_fixed)}]')
print(f'  - 文件大小: {len(window_fixed)} 个系数')
print(f'  - 中心值: {window_fixed[FFT_SIZE//2]} (应该接近 32767)')
print(f'  - 端点值: {window_fixed[0]}, {window_fixed[-1]} (应该为 0)')

