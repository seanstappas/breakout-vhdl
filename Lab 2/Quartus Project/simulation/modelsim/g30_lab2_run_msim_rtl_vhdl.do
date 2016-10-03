transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Sean/OneDrive - McGill University/McGill/Semesters/Fall 2016/ECSE-323 Digital Systems Design/Labs/Lab 2/Quartus Project/g30_16_4_encoder.vhd}
vcom -93 -work work {C:/Users/Sean/OneDrive - McGill University/McGill/Semesters/Fall 2016/ECSE-323 Digital Systems Design/Labs/Lab 2/Quartus Project/g30_64_6_encoder.vhd}

