# Problem 3: Find the largest prime factor of 600,851,475,143

def prime? n
	(2..(n-1)).each { |x| return false if n % x == 0 }
	true
end

n = 600_851_475_143
a = []
product_sum = 1
x = 2 # 2 is the firt prime number

while product_sum < n
	if n % x == 0 && prime?(x)
		a << x
		product_sum *= x
	end
	x += 1
end

puts "#{a.last}"