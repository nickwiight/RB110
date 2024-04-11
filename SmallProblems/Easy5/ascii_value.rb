def ascii_value(string)
  score = 0
  string.chars.each { |letter| score += letter.ord }
  score
end

puts ascii_value('Four score')
puts ascii_value('Launch School')
puts ascii_value('a')
puts ascii_value('')
