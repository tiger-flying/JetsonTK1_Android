#!/bin/bash
 SYSTYPE=$(uname -s)
 if [ $SYSTYPE = Linux ]; then
 #sudo ./nvflash --bct bct.cfg --setbct --odmdata 0x80098000 --configfile flash.cfg --create --bl bootloader.bin --go
 sudo ./nvflash_linx --bct bct.cfg --setbct --configfile flash.cfg --create --bl bootloader.bin --odmdata 0x6009C000 --go
 elif [ $SYSTYPE = Darwin ]; then
 ./nvflash_macosx --bct bct.cfg --setbct --odmdata 0x80098000 --configfile flash.cfg --create --bl bootloader.bin --go
 fi

