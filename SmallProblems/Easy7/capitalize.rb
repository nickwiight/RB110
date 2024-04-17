def word_cap(string)
  # string.split.map(&:capitalize).join(' ')
  capitalize_words(string).join(' ')
end

def capitalize_words(string)
  string.split.map do |word|
    # word.chars.each_with_index do |letter, index|
    #   if index == 0
    #     letter.upcase!
    #   else
    #     letter.downcase!
    #   end
    # end.join
    word.downcase
    word[0] = word[0].upcase
    word
  end
end

puts word_cap('four score and seven')
puts word_cap('the javaScript language')
puts word_cap('this is a "quoted" word')
