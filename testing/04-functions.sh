#!/bin/bash

ID=$(id -u)

VALIDATE(){
   
if($? -ne 0)
then
echo " installing  failed"
exit 1
else
echo "installing  success"
fi 
}
if($ID -ne 0)
then
echo "ERROR :: pls try login as root user"
exit 1
else
echo "script san success with root user"
if

yum install mysql -y 

VALIDATE  $? "mysql" # we are passing two arguments 1. is $? (is exit status, previoues command status success or failed) and 2. "mysql"

yum install git -y  

VALIDATE $? "git"  # we are passing two arguments 1. is $? and 2. "git"

==============================================
### insted of repeating condition mutliple time we can keep in FUNCTION and then we can call
## Generally  we write Function under VARIABLE