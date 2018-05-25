
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name Exp3 -dir "E:/CCOAexp/Experiment/Exp3_ALU/planAhead_run_3" -part xc6slx16csg324-3
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "E:/CCOAexp/Experiment/Exp3_ALU/ALU_M.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {E:/CCOAexp/Experiment/Exp3_ALU} }
set_property target_constrs_file "ALU_M.ucf" [current_fileset -constrset]
add_files [list {ALU_M.ucf}] -fileset [get_property constrset [current_run]]
link_design
