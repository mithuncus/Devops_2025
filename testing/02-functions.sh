#!/bin/bash

ID=$(id -u)

if($ID -ne 0)
then
echo "ERROR :: pls try login as root user"
exit 1
else
echo "script san success with root user"
if

yum install mysql -y 

# our resposiblity to validate it installed or not so we need to write condition for validation

if($? -ne 0)
then
echo " installing mysql failed"
exit 1
else
echo "installing mysql success"
fi 

yum install git -y

if ($? -ne 0)
then 
echo "installing git is failed "
exit 1
else
echo "installing is success"
if

