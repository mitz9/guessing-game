README.md: guessinggame.sh
	touch README.md
	echo "# Guessing Game in Unix" > README.md
	date >> README.md
	echo "There are this many lines in guessinggame.sh" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
