#!/usr/bin/ruby

=begin
	Largest Palindrome Product

	A palindromic number reads the same both ways. The largest palindrome made 
	from the product of two 2-digit numbers is 9009 = 91 × 99.
	Find the largest palindrome made from the product of two 3-digit numbers.
=end

def is_palindrome?(num)
	array = num.to_s.split("")
	l = 0
	r = array.length-1
	while l < r
		if array[l] != array[r]
			return false
		end
		l += 1
		r -= 1
	end
	return true
end

def max_palindrome()
	max = 0
	for i in 999.downto(0)
		for j in 999.downto(0)
			prod = i * j
			if is_palindrome?(prod) and prod > max
				max = prod
			end
		end
	end
	return max
end

puts max_palindrome
