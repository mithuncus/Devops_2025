#!/bin/bash

ID=(id -u)

if [ID -ne 0] ## if ID is not equla to zero thats wat we written, for greaterthan we use -gt for lessthan we use -lt for greaterthan equal we use -ge

then
   echo "please run the script as a root user"

fi   

yum install mysql -y 

## in shell script if script run into any error it wont stop,thats the main drawback when compared with other scripts and programming languages, so we got EXIT status concept and its improtant 
## in any programming or scripting language we have 
## VARIABLES
### Arrays ( insted of one value in variable we will have multiple values)like FRUITS=("Apple" "graps" "mangos") 
## so first value we represent with 0 (zero that is Apple) if value is one then it grapes, if value is 2 means mangos

##Data types (not much use in shell script)

## condition (if condition  we user for taking any decision)
## Functions (we give at top and we call when required in script or program)

## Read -s we use in script for not display  password

## DATE=(date)
## echo "today's $date"

## GREP=(ps -ef|grep java)
## echo "current java process running $GREP"

## greater then we use (-gt) eg: if (10 -gt 100)
## Lessthan   we use (lt)
## greaterthan equal we use (-ge)
## lessthan equal we use (-le) if (10-le 100)

#DRY dont repeat yourself
#CURD operations C-Create U-Update R-Read D-Delet

