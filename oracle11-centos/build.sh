#!/bin/sh
if [ -f oracle-xe-11.2.0-1.0.x86_64.rpm.zip ]; then
    docker build -t oracle/xe:11.2.0.1.0 --shm-size=2g .
else
   echo "File missing! Download http://download.oracle.com/otn/linux/oracle11g/xe/oracle-xe-11.2.0-1.0.x86_64.rpm.zip"
fi
