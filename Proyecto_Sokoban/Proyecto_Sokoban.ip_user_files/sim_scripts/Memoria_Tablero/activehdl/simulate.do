onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+Memoria_Tablero -L xpm -L blk_mem_gen_v8_4_4 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.Memoria_Tablero xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {Memoria_Tablero.udo}

run -all

endsim

quit -force
