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
		./main.cc \ 
		./simple_FIFO.cc \ 
		./system.cc \ 
		./tb.cc \ 
		main.cc \ 
		system.cc \ 
		tb.cc \ 
		simple_FIFO.cc \ 

HEADERS += \ 
		./defines.h \ 
		./simple_FIFO.h \ 
		./system.h \ 
		./tb.h \ 
		system.h \ 
		tb.h \ 
		simple_FIFO.h \ 

OTHER_FILES += \ 
		Makefile \ 
		/home/staff/yw777/Stratus_HLS/simple_FIFO_own/project.tcl \ 

