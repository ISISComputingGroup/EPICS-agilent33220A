#!../../bin/windows-x64/AG33220A

## You may have to change AG33220A to something else
## everywhere it appears in this file

< envPaths

epicsEnvSet "IOCNAME" "$(P=$(MYPVPREFIX))AG33220A"
epicsEnvSet "IOCSTATS_DB" "$(DEVIOCSTATS)/db/iocAdminSoft.db"
epicsEnvSet "STREAM_PROTOCOL_PATH" "$(TOP)/../../agilent33220AApp/protocol"

cd ${TOP}

## Register all support components
dbLoadDatabase "dbd/AG33220A.dbd"
AG33220A_registerRecordDeviceDriver pdbbase

drvAsynIPPortConfigure ("IP", "130.246.49.196:5025")

## Load record instances
dbLoadRecords("$(TOP)/../../db/agilent33220A_Isis.db","P=$(IOCNAME):, PORT=IP")
dbLoadRecords("$(IOCSTATS_DB)","IOC=$(IOCNAME)")

cd ${TOP}/iocBoot/${IOC}
iocInit

