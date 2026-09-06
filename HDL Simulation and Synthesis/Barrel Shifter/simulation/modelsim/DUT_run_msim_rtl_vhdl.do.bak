transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/Barrel Shifter/Gates.vhdl}
vcom -93 -work work {D:/Barrel Shifter/DUT.vhdl}
vcom -93 -work work {D:/Barrel Shifter/demux.vhd}
vcom -93 -work work {D:/Barrel Shifter/shift4.vhd}
vcom -93 -work work {D:/Barrel Shifter/shift2.vhd}
vcom -93 -work work {D:/Barrel Shifter/shift1.vhd}
vcom -93 -work work {D:/Barrel Shifter/bitreverse.vhd}
vcom -93 -work work {D:/Barrel Shifter/mux8bit.vhd}
vcom -93 -work work {D:/Barrel Shifter/mux2.vhd}

vcom -93 -work work {D:/Barrel Shifter/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
