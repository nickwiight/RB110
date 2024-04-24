# def double_consonants(string)
#   result = ''
#   string.chars.each do |character|
#     result << character
#     result << character if character.downcase.match(/[a-z&&[^aeiou]]/)
#   end
#   result
# end

def double_consonants(string)
  string.chars.map do |char|
    char.downcase.match(/[a-z&&[^aeiou]]/) ? char + char : char
  end.join
end

p double_consonants('String')
p double_consonants('Hello-World')
p double_consonants('July 4th')
p double_consonants('')
