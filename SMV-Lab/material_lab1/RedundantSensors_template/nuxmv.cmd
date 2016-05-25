set on_failure_script_quits 1 # Exit early in case of error
set pp_list cpp               # this sets the cpp precompiler

read_model -i System.smv
go_bmc

# Verify the property
check_ltlspec_klive -p "<< INSERT A PROPERTY HERE >>"

quit
