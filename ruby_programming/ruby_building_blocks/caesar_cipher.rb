def encrypt(msg, key)
	alphabet = ('a'..'z').to_a
	encrypted = Hash[alphabet.zip(alphabet.rotate(key.to_i))]
	msg.chars.map { |c| encrypted.fetch(c, " ") }
end

# input
print "Enter your message: "
msg = gets.chomp
print "Enter an encryption key: "
key = gets.chomp

puts "Your encrypted message: " << encrypt(msg, key).join
