#!/usr/bin/ruby

=begin
	Smallest Multiple
	2520 is the smallest number that can be divided by each 
	of the numbers from 1 to 10 without any remainder.
	What is the smallest positive number that is evenly 
	divisible by all of the numbers from 1 to 20?
=end

def is_divisible?(num)
	for i in 11...20
		if num % i != 0
			return false
		end
	end
	return true
end

i = 20 * 19 * 17 * 14 * 13 * 11
while not is_divisible?(i)
	i += 1
end
puts i