transcript on
if {[file exists gate_work]} {
	vdel -lib gate_work -all
}
vlib gate_work
vmap work gate_work

vlog -vlog01compat -work work +incdir+. {full.vo}

vlog -vlog01compat -work work +incdir+D:/innopolis\ 1st\ semestr/Computer\ Architecture/week10/ex2 {D:/innopolis 1st semestr/Computer Architecture/week10/ex2/full.v}
vlog -vlog01compat -work work +incdir+D:/innopolis\ 1st\ semestr/Computer\ Architecture/week10/ex2 {D:/innopolis 1st semestr/Computer Architecture/week10/ex2/testbench.v}

vsim -t 1ps +transport_int_delays +transport_path_delays -L altera_ver -L altera_lnsim_ver -L fiftyfivenm_ver -L gate_work -L work -voptargs="+acc"  test

do D:/innopolis 1st semestr/Computer Architecture/week10/ex2/Tcl_script1.tcl
