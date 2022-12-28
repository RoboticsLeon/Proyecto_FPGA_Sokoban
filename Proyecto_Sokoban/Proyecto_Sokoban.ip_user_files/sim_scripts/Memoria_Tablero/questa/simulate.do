onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib Memoria_Tablero_opt

do {wave.do}

view wave
view structure
view signals

do {Memoria_Tablero.udo}

run -all

quit -force
