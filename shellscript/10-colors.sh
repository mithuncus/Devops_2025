#!/bin/bash

# Define colors
R="\033[31m"  # Red
G="\033[32m"  # Green
Y="\033[33m"  # Yellow
N="\033[0m"   # Reset

DATE=$(date)
TIMESTAMP=$(date +%F-%H-%M-%S)
LOGFILE="/Users/kethanav/Desktop/DevOps_2025/shellscript/$0-$TIMESTAMP.log"

ID=(id -u)

if [$ID -ne 0]
then
echo -e "${R} run the scrip as a root user"
else
echo -e " ${G}script ran successful"
fi


VALIDATE (){

if [$? -ne 0]

then
echo -e "${R} installing git is failed" 
else
echo -e "${G} installing git is success"

fi

}

# Example with green text
echo -e "Hello World! I am learning ${G}DevOps${N}, Shell Scripting."  >> $LOGFILE

# Example with multiple colors
echo -e "${R}Error:${N} Something went wrong" >> $LOGFILE
echo -e "${Y}Warning:${N} Be careful"   >>$LOGFILE
echo -e "${G}Success:${N} Task completed"  >>$LOGFILE

# Print the date
echo -e "Today's date is: ${Y}$(date)${N}" >> $LOGFILE

# Comments work normally with #
# This is a comment

yum install git -y

VALIDATE 
