#!/usr/bin/ruby

=begin
	Even Fibonacci Numbers

	Each new term in the Fibonacci sequence is generated 
	by adding the previous two terms. By starting with 1 and 2, 
	the first 10 terms will be:

	1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

	By considering the terms in the Fibonacci sequence whose values do 
	not exceed four million, find the sum of the even-valued terms.
=end

MAX = 4000000
a = 1
b = 2
total = 0
while b < MAX
	if b % 2 == 0
		total += b
	end
	temp = b
	b = a + b
	a = temp
end
puts total

