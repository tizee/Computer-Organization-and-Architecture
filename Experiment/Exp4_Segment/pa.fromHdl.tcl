
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name Exp4_Segment -dir "E:/Exp4_Segment/Exp4_Segment/planAhead_run_2" -part xc6slx16csg324-3
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "Segment_M.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {Segment_Top.v}]]
set_property file_type Verilog $hdlfile
set_property library work $hdlfile
set_property top Segment_Top $srcset
add_files [list {Segment_M.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc6slx16csg324-3
