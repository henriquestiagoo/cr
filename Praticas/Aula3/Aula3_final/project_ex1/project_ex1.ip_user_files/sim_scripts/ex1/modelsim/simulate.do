onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xil_defaultlib -L secureip -lib xil_defaultlib xil_defaultlib.ex1

do {wave.do}

view wave
view structure
view signals

do {ex1.udo}

run -all

quit -force
