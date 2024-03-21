statement = 'The Flintstones Rock'
letter_hash = {}

statement.chars.each do |char|
  next if char == ' '
  
  if letter_hash.keys.include? char
    letter_hash[char] += 1
  else
    letter_hash[char] = 1
  end
end

puts letter_hash

letters = ('A'..'Z').to_a + ('a'..'z').to_a
result = {}

letters.each do |letter|
  letter_frequency = statement.count(letter)
  result[letter] = letter_frequency if letter_frequency > 0
end

puts result
