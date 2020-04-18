#!/bin/bash
# File guessinggame.sh

#Set the true answer
T_s=$(find -mindepth 1 -type f| wc -l)

#Start guessing

  function GS(){

   if [ $ans -lt $T_s ]
   then
   echo "Your guess is less than the true answer"
   elif	[ $ans -gt $T_s ]
   then
   echo "Your guess is bigger than the true number"
   else
   echo -e "\nCongratulation! You get the it! $T_s "
   exit
   fi
   }

 while true;
	do
 	read -p "Guess the files number in the current directory!"  ans
	if [[ $ans =~ ^[+-]?[0-9]+$ ]]
 	then GS

 	elif [[ $ans =~ ^[+-]?[0-9]+\.?[0-9]*$ ]]
 	then
  	echo -e "\nInput is a float.It does not work"

 	else
 	 echo -e  "\nInput is a string.It does not work"
 	fi

 done
