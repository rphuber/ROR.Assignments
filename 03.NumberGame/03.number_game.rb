# Guess a number game
# by Ryan Huber

# Prompt player to enter their name
# Use their name to print a greeting line
puts "Welcome to the number guessing game!"
print "What's your name? "
name = gets.chomp
puts "Welcome to the game, #{name}!"

# Generate a random number from 1 to 100 and store it as a target number for the player to guess
puts "I have a random number between 1 and 100."
puts "Can you guess it?"
target = rand(100) + 1

# Keep track of the number of guesses the player has made
num_guesses = 0
remaining_guesses = 5 - num_guesses

# Track wether or not the player has guessed correctly
guessed_correctly = false


# Keep allowing the player to guess until they either guess the correct number or run out of guesses
until num_guesses == 5 || guessed_correctly

	# Before each guess, let the player know how many guesses (out of 10) they have left
	puts "You have #{5 - num_guesses} guesses left."

	# Prompt the player to make a guess as to what the target number is
	print "Make a guess: "
	guess = gets.chomp.to_i

	num_guesses += 1

	# Compare the guess to the target
	# If the player's guess is less than the target number, say "Oops.  Your guess is too LOW"
	if guess < target
		puts "Oops.  Your guess is too LOW."
	# If the player's guess is more than the target number, say "Oops.  Your guess is too HIGH"
	elsif guess > target
		puts "Oops.  Your guess is too HIGH"
	# If the player's guess is equal to the target number, say "Good job [name]! You guessed the number in [number of guesses] guesses"
	elsif guess == target
		puts "Good job, #{name}!"
		puts "You guessed the number in #{num_guesses} guesses!"
		guessed_correctly = true
	end

end

# If the player runs out of turns without guessing correctly, say "Sorry, You didn't get the number.  The correct number was [target]"
unless guessed_correctly
	puts "Sorry, You didn't get the number.  (The correct number was #{target}.)"
end