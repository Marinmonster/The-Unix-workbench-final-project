# List all files related to makefile
All: README.md

# Make file
README.md:guessinggame.sh
	touch README.md

#Title Time & Code length  of the project.
  
	echo "Project title:\nGuess game\n" >> README.md
	echo "The date of runing:" >> README.md
	echo $$(date) >> README.md
	echo "\nThe total number of lines of the program:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md


Clean:
	rm README.md

#END
