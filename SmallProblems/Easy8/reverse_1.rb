def reverse_sentence(string)
  array = []
  string.split.each { |word| array.unshift(word) }
  array.join(' ')
  string.split.reverse.join(' ')
end

p reverse_sentence('Hello World')
p reverse_sentence('Reverse these words')
p reverse_sentence('')
p reverse_sentence('      ')
