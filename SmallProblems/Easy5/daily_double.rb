def crunch(string)
  new_string = ''

  string.chars.each do |letter|
    next if new_string[-1] == letter

    new_string << letter
  end

  new_string
end


p crunch('ddaaiillyy ddoouubbllee')
p crunch('4444abcabccba')
p crunch('ggggggggggggggg')
p crunch('a')
p crunch('')
