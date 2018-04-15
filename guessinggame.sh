#!/usr/bin/env bash
# File: guessinggame.sh

#  This program will continuously ask the user to guess the number of files
#  in the current directory, until they guess the correct number.
#  The user will be informed if their guess is too high or too low.
#  Once the user guesses the correct number of files in the current directory
#  they should be congratulated.

#!/usr/bin/env bash
# File: guessinggame_test.sh

#  This program will continuously ask the user to guess the number of files
#  in the current directory, until they guess the correct number.
#  The user will be informed if their guess is too high or too low.
#  Once the user guesses the correct number of files in the current directory
#  they should be congratulated.

echo "How many file(s) are in this directory?"

LC=$(ls -1 | wc -l)             # line count function -- lists each file on a new line then pipes to wc to count the number of lines

while [[ $LC -ne $guess ]]      # while line count is NOT EQUAL to guess

read guess                      # User input

do                              # begin while loop

if [[ $LC -gt $guess ]]         # begin if/elif  IF line count is GREATER THAN guess

then

  echo "Too low! Try again."

elif [[ $LC -lt $guess ]]       # IF line count is LESS THAN guess

then

  echo "Too high! Try again."

elif [[ $LC -eq $guess ]]       # IF line count is EQUAL TO guess

then

  echo "Lucky guess..."
  echo "Le Fin..."

  exit

fi                              #end if/elif

done                            #end while loop
