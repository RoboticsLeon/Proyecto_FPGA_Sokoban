onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib Memoria_Soluciones_opt

do {wave.do}

view wave
view structure
view signals

do {Memoria_Soluciones.udo}

run -all

quit -force
