#!/usr/bin/ruby

=begin
	Largest Prime Factor

	The prime factors of 13195 are 5, 7, 13 and 29.
	What is the largest prime factor of the number 600851475143?
=end

def is_prime?(num)
	for i in 2..Math.sqrt(num)
		if num % i == 0
			return false
		end
	end
	return true
end

NUM = 600851475143
max_prime = 1
for i in 2..Math.sqrt(NUM)
	if NUM % i == 0
		if is_prime?(NUM/i)
			if (NUM/i > max_prime)
				max_prime = NUM/i
			end
		elsif is_prime?(i)
			if (i > max_prime)
				max_prime = i
			end
		end
	end
	i += 1
end
puts max_prime