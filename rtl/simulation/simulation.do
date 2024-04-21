quit -sim
file delete -force work

vlib work
vlog -f files_rtl.f

vsim processor_tb
log -r /*

add wave clk
add wave instruction
add wave if_id_IR
add wave id_ex_IR
add wave ex_mem_IR
add wave mem_wb_IR
add wave if_valid_inst_out
add wave if_id_valid_inst
add wave id_ex_valid_inst
add wave mem_wb_valid_inst
add wave -position insertpoint  \
sim:/processor_tb/proc_module/id_stage_0/regf_0/registers
radix hex

run -all