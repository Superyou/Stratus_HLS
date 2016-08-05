#################################################
# Stratus IDE project file generated;
#################################################
QT       += core

QT       -= gui

CONFIG   += console
CONFIG   -= app_bundle

STRATUSHOME = $$(STRATUS_HOME)
SYSTEMCHOME = $$(SYSTEMC)

TEMPLATE = app
INCLUDEPATH += $${SYSTEMCHOME}/include
INCLUDEPATH += $${SYSTEMCHOME}/include/tlm
INCLUDEPATH += $${STRATUSHOME}/share/stratus/include
INCLUDEPATH += ./bdw_work/wrappers
INCLUDEPATH += ./

SOURCES += \ 
		./digitrec.cc \ 
		./digitrec_reg_bank.cc \ 
		./main.cc \ 
		./system.cc \ 
		./tb.cc \ 
		./vv_add.cc \ 
		main.cc \ 
		system.cc \ 
		tb.cc \ 
		vv_add.cc \ 

HEADERS += \ 
		./defines.h \ 
		./directives.h \ 
		./system.h \ 
		./tb.h \ 
		./training_data.h \ 
		./typedefs.h \ 
		./vv_add.h \ 
		system.h \ 
		tb.h \ 
		vv_add.h \ 

OTHER_FILES += \ 
		Makefile \ 
		/home/staff/yw777/Stratus_HLS/vv_add/project.tcl \ 

