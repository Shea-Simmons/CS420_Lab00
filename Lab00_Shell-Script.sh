#!/bin/bash
#
# This program takes a command-line parameter to determine if there exists a file of the same name
# If yes, the program displays the entire file and then clears the file of its contents
# If no, then a file of the same name shall be created

echo "Entered $F"

FILE=$F

if [ -e $FILE ]; then
		>$FILE #Deletes the contents of the file
		
else
		touch $FILE #Creates the file since it does not already exist
		
fi

for files in `ls -a ./*` #Follows the path to the file (its directory)
do
		echo $files >> $FILE #Writes the directory of FILE to the text of the file itself
		
done

cat $FILE #Prints contents of file (Should be the directory)
		
		