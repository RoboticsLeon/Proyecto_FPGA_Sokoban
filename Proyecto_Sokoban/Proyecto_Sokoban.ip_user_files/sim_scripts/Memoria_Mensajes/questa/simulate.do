onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib Memoria_Mensajes_opt

do {wave.do}

view wave
view structure
view signals

do {Memoria_Mensajes.udo}

run -all

quit -force
