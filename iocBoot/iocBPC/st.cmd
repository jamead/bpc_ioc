#!../../bin/linux-x86_64/BPC

#- You may have to change BPC to something else
#- everywhere it appears in this file

#< envPaths

## Register all support components
dbLoadDatabase "../../dbd/BPC.dbd"
BPC_registerRecordDeviceDriver(pdbbase) 

## Load record instances
dbLoadRecords("../../db/System.db","SYS=BPC:","user=diag")
dbLoadRecords("../../db/Status.db","P=BPC{1}:","user=diag")


iocInit()

## Start any sequence programs
#seq sncBPC,"user=diag"

dbpf BPC{1}:IP:Settings-SP "192.168.1.88:12345"

