onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib Memoria_Numeros_opt

do {wave.do}

view wave
view structure
view signals

do {Memoria_Numeros.udo}

run -all

quit -force
