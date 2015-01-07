questions = [
	{
		question: "Who is the teacher of the Class", 
		answers: ["A. Nick", "B. Sally", "C. Calvin", "D. Rick"],
		correct_answer: "a"
	},
]


puts "Welcome to the quiz game!"
print "First tell me your name:"
name = gets.chomp
puts "Thank you #{name}"
puts "Are you ready to take the quiz?"
ready_answer = gets
if ready_answer.chomp.downcase == "yes"
	puts "Great, let's get started"
	else 
		abort "Come back whenever you are ready to play #{name}"
end

# question 1
puts "Question 1:"
puts "Who is the instructor of this class?"
puts "A. Nick"
puts "B. Rick"
puts "C. Sally"
puts "D. Calvin"

answer1 = gets.chomp
answer1 = answer1.downcase
if answer1 == "a"
		puts "Correct! Nice work #{name}!"
		number_correct = 1
	else
		puts "Sorry #{name}, the correct answer was A. Nick"
end

# question 2
puts "Question 2:"
puts "What kind of pet besides a dog does Nick have?"
puts "A. Fishy"
puts "B. Cat"
puts "C. Scup"
puts "D. Computer"

answer1 = gets.chomp
answer1 = answer1.downcase
if answer1 == "d"
		puts "Correct! Nice work #{name}!"
		number_correct = 1
	else
		puts "Sorry #{name}, the correct answer was D. Computer"
end

