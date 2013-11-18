TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = AG33220A
# AG33220A.dbd will be created and installed
DBD += AG33220A.dbd

# AG33220A.dbd will be made up from these files:
AG33220A_DBD += base.dbd

# Include dbd files from all support applications:
AG33220A_DBD += stream.dbd
AG33220A_DBD += asyn.dbd
AG33220A_DBD += drvAsynSerialPort.dbd
AG33220A_DBD += drvAsynIPPort.dbd
AG33220A_DBD += devIocStats.dbd

AG33220A_LIBS += stream pcre
AG33220A_LIBS += asyn devIocStats

# AG33220A_registerRecordDeviceDriver.cpp derives from AG33220A.dbd
AG33220A_SRCS += AG33220A_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
AG33220A_SRCS_DEFAULT += AG33220AMain.cpp
AG33220A_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#AG33220A_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
AG33220A_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE

