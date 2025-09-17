#!/bin/bash

#function -->code that is repeated again, we can keep it in function and cal whenever we want
syntax 
FUNCTION_NAME(){
    statements to run
}

##eg
#VALIDATE(){
#    statements to run
#}

##VALIDATE
##Generally we keep FUNCTIONS under VARIABLE in the script/programming   
ID=$(id -u)
VALIDATE(){
    if [ $? -ne 0 ]
    then
    echo " installing  is failed"
    exit 1 # we are asking script to stop here if its failed 
    else
    echo " installing  is success"

    fi
}
if[ $ID -ne 0 ]
then 
echo "please run this script as a root user"
exit 2 # anything we can give exit 1 or exit 2 or exit 3, so we are saying to scipt to stop with this exit 1 line since user ran script as regular user insted root user
else
echo "thanks for running script as a root user"
fi

yum install mysql -y

VALIDATE 

yum install git -y

VALIDATE

#========
#o/p it says installing is success  means with is installed so we need to give some values

yum install mysql -y

VALIDATE $?  "mysql" ## we are passing  two arguments/values to function $?(exit status) and "mysql"

yum install git -y

VALIDATE $? "git "

=======================================================
======================================================
## next stage we are passing two argument $? and "mysql for function" so we are going to change it in function as $1 and $2
ID=$(id -u)
VALIDATE(){
    if [$1 -ne 0]
    then
    echo " installing  is $2 failed"
    exit 1 # we are asking script to stop here if its failed 
    else
    echo " installing  is $2 success"

    if
}
if[ $ID -ne 0 ]
then 
echo "please run this script as a root user"
exit 2 # anything we can give exit 1 or exit 2 or exit 3, so we are saying to scipt to stop with this exit 1 line since user ran script as regular user insted root user
else
echo "thanks for running script as a root user"
fi

yum install mysql -y

VALIDATE $? "mysql" ## so here two arguments $? value is $1 and "mysql" value is $2 we change it VALIDATE Function 

yum install git -y

VALIDATE $? "git "
