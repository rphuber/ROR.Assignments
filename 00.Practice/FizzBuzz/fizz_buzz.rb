# FizzBuzz

# Loop through the numbers from 1-100. If the number is divisible by 3, display Fizz. If it's divisible by 5, display Buzz. If it's divisible by both, display FizzBuzz. If it's not divisible by any, display the number.

# Result:

# 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, Fizz Buzz, 16...

for i in 1..100
	if ((i % 3) == 0) && ((i % 5) == 0)
		print "FizzBuzz, "
	elsif i % 3 == 0
		print "Fizz, "
	elsif i % 5 == 0
		print "Buzz, "
	else 
		print i.to_s + ", "
	end
end
