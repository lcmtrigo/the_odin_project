def substring(word, dictionary)
	results = {}
	dictionary.each do |w|
		current = word.downcase
		w = w.downcase
		while not current.index(w).nil?
			index = current.index(w)
			current = current[index+1..-1]
			results.has_key?(w) ? results[w] += 1 : results[w] = 1
		end
	end
	return results
end

puts "Enter word: "
word = gets.chomp
puts "Enter dictionary (separate each word with a comma): "
dictionary = gets.chomp.split(",").map(&:strip)

puts substring(word, dictionary)