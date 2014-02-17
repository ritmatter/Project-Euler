#!/usr/bin/ruby

=begin
	Longest Collatz Sequence

	The following iterative sequence is defined for the set of positive integers:

		n → n/2 (n is even)
		n → 3n + 1 (n is odd)

	Using the rule above and starting with 13, we generate the following sequence:

		13 → 40 → 20 → 10 → 5 → 16 → 8 → 4 → 2 → 1
	It can be seen that this sequence (starting at 13 and finishing at 1) contains 10 terms. Although it has not been proved yet (Collatz Problem), it is thought that all starting numbers finish at 1.

	Which starting number, under one million, produces the longest chain?

	NOTE: Once the chain starts the terms are allowed to go above one million.
=end

$lengths = Hash.new

def chain_length(start)
	n = start
	len = 1
	while n != 1
		if n % 2 == 0
			n = n/2
		else
			n = 3*n + 1
		end
		if $lengths[n] != nil
			return len + $lengths[n]
		end
		len += 1
	end
	$lengths[start] = len
	return len
end

MAX = 1000000
longest_start = 1
max_len = 1
for i in 2...MAX
	cl = chain_length(i)
	if cl > max_len
		max_len = cl
		longest_start = i
	end
end
puts longest_start