onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib Memoria_Fases_opt

do {wave.do}

view wave
view structure
view signals

do {Memoria_Fases.udo}

run -all

quit -force
