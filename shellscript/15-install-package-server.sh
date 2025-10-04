#!/bin/bash

ID=$(id -u) # for getting the ID ,root user means it will be zero other number like 2.4. then its not root user

R="\033[31m" # in shell script for Red color we use /e[31m
G="\033[32m" # in shell script for Green color we use /e[32m
Y="\033[33m" # in shell script for Yellow color we use /e[33m
N="\033[0m"  # in shell script for Normal color we use /e[0m

TIMESTAMP=$(date +%F-%H-%M-%S) # it will display date and time in formate
LOGFILE="/tmp/$0-$TIMESTAMP.log" #for executing in server we use this line $0 -->means previous run scriptname
#LOGFILE="/Users/kethanav/Desktop/DevOps_2025/shellscript/$0-$TIMESTAMP.log" #for executing in macbook

echo "script started executing at $TIMESTAMP" &>>$LOGFILE
# VALIDATE is a function, usually in function we write condition and insted of repeating code 
# we call function where it is required DRY principel DONT REPEAT Yourself
# VALIDATE function checkes prvious command ran success or failed.
# usually $1 is first argument we passed, $2 is second argument passed
#Like VALIDATE $? $package means we are using loops concept so
# @package is also a valirable in loops it will consider 1 argument we pass in loops

VALIDATE (){
  if [ $1 -ne 0 ]
  then
    echo -e "$2 ...$R failed $N "
    else
    echo -e "$2 ..$G success $N "
    fi

}


if [$ID -ne 0]
then
echo -e "$R ERROR:: Please run this script with root user $N"
else
echo -e "${G} you are root user ${N}"
fi #fi is closing of if condition

echo "All arguments passed $@" #$@ is a special vairable in shell script for dispalying all arguments passed

#special variables
# $@  for displaying all the arguments passed
# $?  for getiing pervious output or exit status
# $0 for getting the previous ran script name like 14-install-packages.sh
# $1 is an argument passed
# $2 is a second argument passed
# $N means Nth argument passed
##redirecting concepts below
# > redirecting  > log.txt it will always write fresh, it will delte existing
# >> double greater then symbol means it will append it wil keep everything old log and also write new
# 1> log.txt means it will write only success log only
# 2> log.txt means it will write only Failure log only
# &>> means it will write both success and failure log in same log

#echo "all arguments $@"
#we pass arguments like git, mysql, postfix, net-tools here first argument is git,
#package=git is the firts argument
#package=mysql is the second argument
#package=postfix is thrid argu
#package=net-tools is fourth argument like we can pass n number
#below we are writing loop concept
#Syntax  
#for i in (1..100) #here i is a variable we are asking to to print 1 to 100 numbers
#do
#echo "$i"
#done

for package in $@
do 
#we are writing below condition to check packages already installed if not install
yum list installed $package  &>>$LOGFILE # check installed or not , for usually run commanf for checking "yum list installed git" or "yum list installed mysql" 
if [ $? -ne 0 ] # if not installed, this if $? means previous output is not equals to zero then its not installed
then
yum install $package -y  &>>$LOGFILE # install the package
VALIDATE $? "Installation of $package" # VALIDATE is aFunction, $? is 1st arg, "installation of $package is 2nd arg"
else
 echo -e "$package is already  installed ....$Y skypping $N"
 fi
done
