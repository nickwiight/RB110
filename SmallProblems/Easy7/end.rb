def penultimate(string)
  string.split[-2]
end

def middle(string)
  words = string.split
  half = words.length / 2
  words[half]
end

puts penultimate('last word')
puts penultimate('Launch School is great!')
puts middle('last word')
puts middle('Launch School is great!')
puts middle('there are five words here')
