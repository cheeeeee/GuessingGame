README.md: guessinggame.sh
	touch README.md
	echo "Guessing Game Project for Unix Workbench" >> README.md
	echo "Guessing Game Project contains this many lines:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
	echo "*  Created on: $$(date +'%Y.%m.%d %H:%M:%S')" >> README.md
