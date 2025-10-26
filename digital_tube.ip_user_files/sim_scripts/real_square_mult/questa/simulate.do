onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib real_square_mult_opt

do {wave.do}

view wave
view structure
view signals

do {real_square_mult.udo}

run -all

quit -force
