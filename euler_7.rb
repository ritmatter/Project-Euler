#!/usr/bin/ruby

=begin
	10001st Prime

	By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, 
	we can see that the 6th prime is 13.
	What is the 10 001st prime number?
=end

def is_prime?(num)
	for i in 2..Math.sqrt(num)
		if num % i == 0
			return false
		end
	end
	return true
end

MAX = 10001
count = 0
i = 2
while count < MAX
	if is_prime?(i)
		count += 1
	end
	i += 1
end

puts i-1