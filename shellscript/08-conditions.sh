#!/bin/bash
NUMBER=$1

##In shell script for grater than we use "gt" for Less than "lt" for graterthan equals to "ge" for Lessthan equal to "le"
if [ $NUMBER -gt 100]
then
   echo "Given number $NUMBER is greater than 100" 
else
   echo "Given number $NUMBER is not greater then 100"
fi


   ### install mysql through shell script
   ## steps
   #1.check user is root or not
   #2. if root proceed, if not root stop and send error, run with root user

   ## root user ah kadha ela telsuthundhi

   ## sudo su 
   ## if your are a root user, your ID will be zero "0" command to check ID type "id" in command prompt or "id -u"  

   #!/bin/bash

   ID=$(id -u) ## for running command get output in variable we use this syntax ID=$(id -u)

   if  [$ID -ne 0] # ID is variable  getting from above command "-ne" mean not equals to 0(zero) means user is doesnt have root access
   then
      echo "error :: Please run this script as a root user"

   else 
       echo " you are a root user"
   fi


   #####

   #!/bin/bash

   ID={id -u}

   if [ID -ne 0]
   then
      echo " ERROR :: Please run the script as root user"
      exit 1
    else
       echo "script run as a root user"

    fi

    yum install mysql -y 
    
    VALIDATE 