set on_failure_script_quits 1 # Exit early in case of error
set pp_list cpp               # this sets the cpp precompiler
set ocra_discrete_time 1      # For discrete time models

# Perform syntactic control and type checking
ocra_check_syntax -i System.oss

# Check that assumes and guarantees are not inconsistent
ocra_check_consistency
ocra_check_refinement

# Check component against its implementation
# If contracts are not defined, only the interface is checked
ocra_check_implementation -I Sensor.smv
ocra_check_implementation -I VarMonitor.smv
ocra_check_implementation -I GenMonitor.smv
ocra_check_implementation -I Selector.smv

# Generate monolithic implementation using nominal.map
echo "Creating Implementation: System.smv"
ocra_print_system_implementation -m nominal.map -o System.smv

quit
