#!/usr/bin/ruby

=begin
	Special Pythagorean Triplet

	A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
		a^2 + b^2 = c^2
	For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.
	There exists exactly one Pythagorean triplet for which a + b + c = 1000.
	Find the product abc.
=end

# a^2 + b^2 = c^2 
# 	and
# a + b = 1000
# Substituting out c gets us this relationship between a and b
def get_a(b)
	a = (1000.0 * b - 1000**2/2.0)/(b - 1000)
	if a % 1 == 0
		return a
	end
	return -1
end

b = 2
while get_a(b) == -1
	b += 1
end
a = get_a(b)
c = 1000 - a - b
puts "#{a * b * c}"
