# Problem 1: Sum of all the mutiples of 3 and 5 below 1000

NUM = 1000
numArray = Array.new

for i in 1..(NUM - 1)
	if (i % 3 == 0) or (i % 5 == 0)
		numArray.push(i)
	end
end

puts numArray.inject(:+)

