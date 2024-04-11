VOWELS = 'aeiou'
hsh = {
  first: ['the', 'quick'], 
  second: ['brown', 'fox'], 
  third: ['jumped'],
  fourth: ['over', 'the', 'lazy', 'dog']
}


hsh.each do |_, value|
  value.each do |word|
    word.chars.each { |letter| puts letter if VOWELS.include? letter }
  end
end
