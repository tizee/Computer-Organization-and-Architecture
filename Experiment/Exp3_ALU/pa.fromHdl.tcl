
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name Exp3 -dir "E:/CCOAexp/Experiment/Exp3_ALU/planAhead_run_1" -part xc6slx16csg324-3
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "ALU_M.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {CLED_M.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {Choice_M.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {ALU_TOP.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {ALU_M.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top ALU_M $srcset
add_files [list {ALU_M.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc6slx16csg324-3
