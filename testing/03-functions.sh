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

VALIDATE  # here we are calling VALIDATE Function we wrote function in the TOP and here we are calling it 

yum install git -y

VALIDATE 

### insted of repeating condition mutliple time we can keep in FUNCTION and then we can call
## Generally  we write Function under VARIABLE


