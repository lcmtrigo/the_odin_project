# Problem 2: Find the sum of all Fibonacci numbers below 4,000,000

def sum_even_fib(n);
	sumfib = 0;
	a, b = 0, 1
	while b < n
		a, b = b, a + b
		if b % 2 == 0
			sumfib = sumfib + b
		end
	end
	return sumfib
end

puts(sum_even_fib(4000000))