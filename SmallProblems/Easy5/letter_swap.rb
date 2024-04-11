def swap(string)
  words = string.split

  words.map do |word|
    word[0], word[-1] = word[-1], word[0]
    word
  end

  words.join(' ')
end

puts swap('Oh what a wonderful day it is')
puts swap('Abcde')
puts swap('a')
