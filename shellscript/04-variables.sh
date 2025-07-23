#!/bin/bash
DATE=$(date)
CAL=$(cal)
HOSTNAME=$(hostName)

DISKFREE=$(df -hT)


echo "script started executing $DATE"


echo "this month calander $CAL"

echo " hostname = $HOSTNAME"

echo "diskfree $DISKFREE"