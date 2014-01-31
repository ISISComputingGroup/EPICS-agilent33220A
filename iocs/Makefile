TOP = ..
include $(TOP)/configure/CONFIG
DIRS := $(DIRS) $(filter-out Makefile, $(wildcard *))
ACTIONS += uninstall
include $(TOP)/configure/RULES_DIRS
