#!/usr/bin/bash
# File guessinggame.sh

#Set the true answer
T_s=$(ls -l|wc -l)

#Start guessing

  function GS(){
   while true;
   do
   echo "Let me see your guess"
   read  ans
   if [ $ans -lt $T_s ]
   then
   echo "Your guess is less than the true answer"
   elif [ $ans -gt $T_s ]
   then
   echo "Your guess is bigger than the true number"
   else
   echo -e "\nCongratulation! You get the it! $T_s "
   break;
   fi
   done
   }

 echo "Guess the files number in the current directory!"
 GS

