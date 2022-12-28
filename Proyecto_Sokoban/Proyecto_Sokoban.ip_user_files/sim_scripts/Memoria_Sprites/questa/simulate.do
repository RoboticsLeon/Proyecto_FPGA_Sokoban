onbreak {quit -f}
onerror {quit -f}

vsim -lib xil_defaultlib Memoria_Sprites_opt

do {wave.do}

view wave
view structure
view signals

do {Memoria_Sprites.udo}

run -all

quit -force
