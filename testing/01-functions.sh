#!bin/bash

# ID is Varible  we are getting output from id -u command for checking user is root or not 
ID=$(id -u)

##VALIDATE function we wrote and $!1  and $2 are arguments we pass $? and "mysql or git"
# $? is a command to check previous command is success or failure if its success value will be zero other wise its writes otherthan zero

VALIDATE(){
    if [ $1 -ne 0 ]
    then
    echo " installing  is $2 failed"
    exit 1 # we are asking script to stop here if its failed 
    else
    echo " installing  is $2 success"

    fi
}


if [ $ID -ne 0 ]
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