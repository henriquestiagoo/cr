onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib ex1_opt

do {wave.do}

view wave
view structure
view signals

do {ex1.udo}

run -all

quit -force