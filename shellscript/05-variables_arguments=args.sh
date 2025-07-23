#!/bin/bash
#there should be no space in between whil declaring variables

#arguments=args we can pass values through command,args will be in every programming language and also in every scripting language.
#while running shellscripts we can pass arguments
#command without arguments -->sh 05-variables_arguments\=args.sh  without values
# command with arguments -->sh 05-variables_arguments\=args.sh JaySriRam sita


PERSON1=$1
PERSON2=$2

echo "$PERSON1: Hello $PERSON2, Good Morning "
echo "$PERSON2: Hi $PERSON1 , Very Good Morning"
echo "$PERSON1: How are you $PERSON2?"
echo "$PERSON2: I am good $PERSON1, How are you"

