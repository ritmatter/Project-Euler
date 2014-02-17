#!/usr/bin/ruby

=begin
	Summation of Primes

	The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
	Find the sum of all the primes below two million.
=end

def is_prime?(num)
	for i in 2..Math.sqrt(num)
		if num % i == 0
			return false
		end
	end
	return true
end

total = 0
MAX = 2000000
for i in 2...MAX
	if is_prime?(i)
		total += i
	end
end
puts total