#!/bin/bash
timeout=$1
SECONDS=0
check="wget -O /dev/null -nv $2"
eval $check
retCode=$?
while (($retCode != 0))  && (($SECONDS < $timeout))
do
    sleep 5
    eval $check
    retCode=$?
done
exit $retCode

