#!/bin/bash
## in this script we are  in VALIDATE FUNCTION we are giveing $1 and $2 so
## it will pick the arguments we pass ($? is $1) (what ever the second argument it will be pick up by $2)
ID=$(id -u)

VALIDATE(){
   
if [ $1 -ne 0 ]
then
echo " installing $2 failed"
exit 1
else
echo "installing $2 success"
fi 
}
if [ $ID -ne 0 ]
then
echo "ERROR :: pls try login as root user"
exit 1
else
echo "script san success with root user"
if

yum install mysql -y 

VALIDATE  $? "mysql" # we are passing two arguments 1. is $? (is exit status, previoues command status success or failed) and 2. "mysql"

yum install git -y  

VALIDATE $? "git"