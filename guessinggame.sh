function guessing-game {
        num_files=$(ls -p | grep -v / | wc -l)
        user_guess=-1
        echo "Guess the number of files in the current directory!"
        while [[ $user_guess -ne $num_files ]]
        do
                echo "Enter your guess:"
                read user_guess
                if [[ $user_guess -eq $num_files ]]
                then
                        echo "Congratulations, you guessed correctly!"
                elif [[ $user_guess -lt $num_files ]]
                then
                        echo "Too low, guess again!"
                else
                        echo "Too high, guess again!"
                fi
        done
        echo "All done, thanks for playing!"
}
guessing-game
