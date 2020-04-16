#!/usr/bin/env bash
# File makefile.
#   bash  guessinggame.sh
#
  
   touch README.md

#Title of the project.
  
   echo -e "Project title:\nGuess game\n" >> README.md
   echo "The date of runing:" >> README.md
   now=$(date +%Y-%m-%d-%H-%M-%S)
   echo -e $now >> README.md
   echo "The total number of lines of the program:" >> README.md
   wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md


 
   rm README.md

#END
