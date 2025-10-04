#!/bin/bash

TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/Users/kethanav/Desktop/DevOps_2025/shellscript/$0-$TIMESTAMP.log"

G="\033[32m"
for i in {100..200}
do
echo " ${G} $i" >>$LOGFILE
done
