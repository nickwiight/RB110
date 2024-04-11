def spin_me(string)
  string.split.each do |word|
    word.reverse!
  end.join(' ')
end

# split and join create a new object, so it would return a new object

word = 'hello world'
p spin_me(word)
p word
