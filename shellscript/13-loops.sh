#!/bin/bash

TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/Users/kethanav/Desktop/DevOps_2025/shellscript/$0-$TIMESTAMP.log"

G="\033[32m"
N="\033[0m"
for i in {100..200}
do
echo -e " ${G} $i ${N}" >>$LOGFILE
done




#!/bin/bash



#user call by giving it as arguments

#for all argument pass we user $@ 
#for count of argument we user $#

#check root user or not
#2. if root user 
