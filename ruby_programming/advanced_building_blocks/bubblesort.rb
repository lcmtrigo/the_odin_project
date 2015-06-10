# takes an array and returns it sorted using a bubble sort algorithm
def bubble_sort(arr)
	loop do
		sorted = false
		(arr.length - 1).times do |i|
			#if current index > the next one, swap them
			if arr[i] > arr[i + 1]
				arr[i], arr[i + 1] = arr[i + 1], arr[i]
				sorted = true
			end
		end
		break if not sorted
	end
	return arr
end

#bubble sort that takes a block
def bubble_sort_by(arr)
	loop do
		sorted = false
		(arr.length - 1).times do |i|
			if yield(arr[i], arr[i + 1]) > 0
				arr[i], arr[i + 1] = arr[i + 1], arr[i]
				sorted = true
			end
		end
		break if not sorted
	end
	return arr
end

puts bubble_sort([4,3,78,2,0,2])
# => [0,2,2,3,4,78]

puts bubble_sort_by(["hi", "hello", "hey"]) { |left, right|
	left.length - right.length
}
# => ["hi", "hey", "hello"]
