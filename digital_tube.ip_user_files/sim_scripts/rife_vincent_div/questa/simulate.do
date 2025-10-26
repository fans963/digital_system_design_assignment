onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib rife_vincent_div_opt

do {wave.do}

view wave
view structure
view signals

do {rife_vincent_div.udo}

run -all

quit -force
