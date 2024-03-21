words = 'the flintstones rock'

def titleize(string)
  words = string.split
  words.map(&:capitalize!)
  words.join(' ')
end

puts titleize words
