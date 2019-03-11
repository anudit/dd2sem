transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -vlog01compat -work work +incdir+D:/intelFPGA_lite/18.1]/Lab6 {D:/intelFPGA_lite/18.1]/Lab6/half.v}
vlog -vlog01compat -work work +incdir+D:/intelFPGA_lite/18.1]/Lab6 {D:/intelFPGA_lite/18.1]/Lab6/full.v}
vlog -vlog01compat -work work +incdir+D:/intelFPGA_lite/18.1]/Lab6 {D:/intelFPGA_lite/18.1]/Lab6/adder.v}

