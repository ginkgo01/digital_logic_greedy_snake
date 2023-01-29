# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
set_param simulator.modelsimInstallPath H:/modelsim/win32pe
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
create_project -in_memory -part xc7a100tcsg324-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_msg_config -source 4 -id {IP_Flow 19-2162} -severity warning -new_severity info
set_property webtalk.parent_dir H:/digital_logic/Greedy-Snake-Verilog/Full_Project_on_Vivado2018/project_1/project_1.cache/wt [current_project]
set_property parent.project_path H:/digital_logic/Greedy-Snake-Verilog/Full_Project_on_Vivado2018/project_1/project_1.xpr [current_project]
set_property XPM_LIBRARIES XPM_CDC [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
read_ip -quiet H:/digital_logic/Greedy-Snake-Verilog/Full_Project_on_Vivado2018/project_1/project_1.srcs/sources_1/ip/my_clk_wiz_1/my_clk_wiz_1.xci
set_property is_locked true [get_files H:/digital_logic/Greedy-Snake-Verilog/Full_Project_on_Vivado2018/project_1/project_1.srcs/sources_1/ip/my_clk_wiz_1/my_clk_wiz_1.xci]

foreach dcp [get_files -quiet -all *.dcp] {
  set_property used_in_implementation false $dcp
}
read_xdc dont_touch.xdc
set_property used_in_implementation false [get_files dont_touch.xdc]

synth_design -top my_clk_wiz_1 -part xc7a100tcsg324-1 -mode out_of_context

rename_ref -prefix_all my_clk_wiz_1_

write_checkpoint -force -noxdef my_clk_wiz_1.dcp

catch { report_utilization -file my_clk_wiz_1_utilization_synth.rpt -pb my_clk_wiz_1_utilization_synth.pb }

if { [catch {
  write_verilog -force -mode synth_stub H:/digital_logic/Greedy-Snake-Verilog/Full_Project_on_Vivado2018/project_1/project_1.runs/my_clk_wiz_1_synth_1/my_clk_wiz_1_stub.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a Verilog synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode synth_stub H:/digital_logic/Greedy-Snake-Verilog/Full_Project_on_Vivado2018/project_1/project_1.runs/my_clk_wiz_1_synth_1/my_clk_wiz_1_stub.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create a VHDL synthesis stub for the sub-design. This may lead to errors in top level synthesis of the design. Error reported: $_RESULT"
}

if { [catch {
  write_verilog -force -mode funcsim H:/digital_logic/Greedy-Snake-Verilog/Full_Project_on_Vivado2018/project_1/project_1.runs/my_clk_wiz_1_synth_1/my_clk_wiz_1_sim_netlist.v
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the Verilog functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

if { [catch {
  write_vhdl -force -mode funcsim H:/digital_logic/Greedy-Snake-Verilog/Full_Project_on_Vivado2018/project_1/project_1.runs/my_clk_wiz_1_synth_1/my_clk_wiz_1_sim_netlist.vhdl
} _RESULT ] } { 
  puts "CRITICAL WARNING: Unable to successfully create the VHDL functional simulation sub-design file. Post-Synthesis Functional Simulation with this file may not be possible or may give incorrect results. Error reported: $_RESULT"
}

add_files H:/digital_logic/Greedy-Snake-Verilog/Full_Project_on_Vivado2018/project_1/project_1.runs/my_clk_wiz_1_synth_1/my_clk_wiz_1_stub.v -of_objects [get_files H:/digital_logic/Greedy-Snake-Verilog/Full_Project_on_Vivado2018/project_1/project_1.srcs/sources_1/ip/my_clk_wiz_1/my_clk_wiz_1.xci]

add_files H:/digital_logic/Greedy-Snake-Verilog/Full_Project_on_Vivado2018/project_1/project_1.runs/my_clk_wiz_1_synth_1/my_clk_wiz_1_stub.vhdl -of_objects [get_files H:/digital_logic/Greedy-Snake-Verilog/Full_Project_on_Vivado2018/project_1/project_1.srcs/sources_1/ip/my_clk_wiz_1/my_clk_wiz_1.xci]

add_files H:/digital_logic/Greedy-Snake-Verilog/Full_Project_on_Vivado2018/project_1/project_1.runs/my_clk_wiz_1_synth_1/my_clk_wiz_1_sim_netlist.v -of_objects [get_files H:/digital_logic/Greedy-Snake-Verilog/Full_Project_on_Vivado2018/project_1/project_1.srcs/sources_1/ip/my_clk_wiz_1/my_clk_wiz_1.xci]

add_files H:/digital_logic/Greedy-Snake-Verilog/Full_Project_on_Vivado2018/project_1/project_1.runs/my_clk_wiz_1_synth_1/my_clk_wiz_1_sim_netlist.vhdl -of_objects [get_files H:/digital_logic/Greedy-Snake-Verilog/Full_Project_on_Vivado2018/project_1/project_1.srcs/sources_1/ip/my_clk_wiz_1/my_clk_wiz_1.xci]

add_files H:/digital_logic/Greedy-Snake-Verilog/Full_Project_on_Vivado2018/project_1/project_1.runs/my_clk_wiz_1_synth_1/my_clk_wiz_1.dcp -of_objects [get_files H:/digital_logic/Greedy-Snake-Verilog/Full_Project_on_Vivado2018/project_1/project_1.srcs/sources_1/ip/my_clk_wiz_1/my_clk_wiz_1.xci]

if {[file isdir H:/digital_logic/Greedy-Snake-Verilog/Full_Project_on_Vivado2018/project_1/project_1.ip_user_files/ip/my_clk_wiz_1]} {
  catch { 
    file copy -force H:/digital_logic/Greedy-Snake-Verilog/Full_Project_on_Vivado2018/project_1/project_1.runs/my_clk_wiz_1_synth_1/my_clk_wiz_1_sim_netlist.v H:/digital_logic/Greedy-Snake-Verilog/Full_Project_on_Vivado2018/project_1/project_1.ip_user_files/ip/my_clk_wiz_1
  }
}

if {[file isdir H:/digital_logic/Greedy-Snake-Verilog/Full_Project_on_Vivado2018/project_1/project_1.ip_user_files/ip/my_clk_wiz_1]} {
  catch { 
    file copy -force H:/digital_logic/Greedy-Snake-Verilog/Full_Project_on_Vivado2018/project_1/project_1.runs/my_clk_wiz_1_synth_1/my_clk_wiz_1_sim_netlist.vhdl H:/digital_logic/Greedy-Snake-Verilog/Full_Project_on_Vivado2018/project_1/project_1.ip_user_files/ip/my_clk_wiz_1
  }
}

if {[file isdir H:/digital_logic/Greedy-Snake-Verilog/Full_Project_on_Vivado2018/project_1/project_1.ip_user_files/ip/my_clk_wiz_1]} {
  catch { 
    file copy -force H:/digital_logic/Greedy-Snake-Verilog/Full_Project_on_Vivado2018/project_1/project_1.runs/my_clk_wiz_1_synth_1/my_clk_wiz_1_stub.v H:/digital_logic/Greedy-Snake-Verilog/Full_Project_on_Vivado2018/project_1/project_1.ip_user_files/ip/my_clk_wiz_1
  }
}

if {[file isdir H:/digital_logic/Greedy-Snake-Verilog/Full_Project_on_Vivado2018/project_1/project_1.ip_user_files/ip/my_clk_wiz_1]} {
  catch { 
    file copy -force H:/digital_logic/Greedy-Snake-Verilog/Full_Project_on_Vivado2018/project_1/project_1.runs/my_clk_wiz_1_synth_1/my_clk_wiz_1_stub.vhdl H:/digital_logic/Greedy-Snake-Verilog/Full_Project_on_Vivado2018/project_1/project_1.ip_user_files/ip/my_clk_wiz_1
  }
}
