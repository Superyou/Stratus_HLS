#*******************************************************************************
# Copyright 2015 Cadence Design Systems, Inc.
# All Rights Reserved.
#
#*******************************************************************************

######################################################################
# list subdirectories that contain memory libraries
MEMLIBS =

# list subdirectories that contain interface libraries
IFLIBS =

# Uncomment this line to use the Insight debugger
# Included when running in regressions and by the user   # XXX_FDS_REG
#BDW_DEBUG = 1

# The cmp_result target compares the simulation results with the
# golden results. The testbench writes out the results file (data.out)
# in the simulation configuration directory. The cmp_result target is
# automatically run at the end of each simulation. (See the
# endOfSimCommand definition in the project.tcl file.)

GOLD_FILE = .golden.dat
RESULTS_FILE = $(BDW_SIM_CONFIG_DIR)/response.dat

cmp_result:
	@if [ -f $(RESULTS_FILE) ] ; then \
	  echo "****************************************" ; \
	  echo `date` ; \
	  echo "Performing Simulation Results Comparison" ; \
	  echo "for $(BDW_SIM_CONFIG) Simulation..." ; \
	  if diff $(RESULTS_FILE) $(GOLD_FILE) ; then \
	    echo "  $(BDW_SIM_CONFIG): SIMULATION PASSED" ; \
	    bdw_sim_pass ; \
	  else \
	    echo "  $(BDW_SIM_CONFIG): SIMULATION FAILED" ; \
	    bdw_sim_fail ; \
	  fi ; \
	  echo "****************************************" ; \
	else \
	  echo "****************************************" ; \
	  echo `date` ; \
	  echo "ERROR: Simulation output doesn't exist" ; \
	  echo "for $(BDW_SIM_CONFIG) Simulation..." ; \
	  echo "  $(BDW_SIM_CONFIG): SIMULATION FAILED" ; \
	  bdw_sim_fail ; \
	  echo "****************************************" ; \
	fi


-include Makefile.prj

Makefile.prj : project.tcl
	@bdw_makegen

# Clean out undesirable junk files from the project directory
# Uses the automatically created clean_all target from Makefile.prj
clean: clean_all clean_libs
	@rm -f transcript vsim* *.wlf data.out
	@rm -f *~ *.bak *.BAK
	@rm -rf work debussy* vfast*
	@rm -f Makefile.prj
	@rm -f msg_help.html
	@rm -rf core
	@rm -rf core.*
	@rm -rf .stack.*

CLEAN: clean
