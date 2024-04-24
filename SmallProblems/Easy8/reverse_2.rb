def reverse_words(string)
  string.split.map do |word|
    word.size > 4 ? word.reverse : word
  end.join(' ')
end

p reverse_words('Professional')
p reverse_words('Walk around the block')
p reverse_words('Launch School')
