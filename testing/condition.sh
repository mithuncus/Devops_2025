#!/bin/bash

ID=$(id -u)
# how we get the command output to variable
DATE=$(date) # so it will keep date otput value
CAL=$(cal)

## root user or not how we find out, with command ==> 'id' if user is root its shows always zero, 
#for normal user it will some number random like 123, 345 something

# we are writing condition
# below condition is for script running as root user or not
if[ $ID -ne 0 ]
then 
echo "please run this script as a root user"
else
echo "thanks for running script as a root user"
fi
#shell scipt wont stop , if it faces error 
#its our resposibility to check n proceed
# Main disadvantage in Shell script is if any error occurs it wont stop at that line of code,we need to make sure script ran sucussfull
# all programing languages will stops if any error occurs in code/script.
#so we got concept call EXIT status, 
# EXIT status:
#-----------
# previous command success or not
#$? --> command if sucuss, it displays zero
# previous command insted of ls , give hz, then its not correct command

#command to find the exit status is --> $? 
#  --> $? so it will display previous command execution if its succuss then it will show as value zero, 
# if previous command failed then Exit status $? command displays some value other than zero.

#echo $?  in command prompt , it will store the previous command success or not

# so for if user run script without sudo/root user then about logic fails so we give 


# exit 2 ## any number

if[ $ID -ne 0 ]
then 
echo "please run this script as a root user"
exit 2 # anything we can give exit 1 or exit 2 or exit 3, so we are saying to scipt to stop with this exit 1 line since user ran script as regular user insted root user
else
echo "thanks for running script as a root user"
fi

yum install mysql -y

# we need to check weather script installed or not  so we need to validate

if [$? -ne 0]
then
echo " installing mysql is failed"
exit 1 # we are asking script to stop here if its failed 
else
echo " installing mysql is success"

if


yum install git -y

if [$? -ne 0]
then
echo "installaing git is failed"
exit 1 # we are asking script to stop here if its failed
else
echo "installing git is success"