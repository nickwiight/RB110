# def leading_substrings(string)
#   character_array = ['']
#   string.each_char do |character|
#     character_array << (character_array.last + character)
#   end
#   character_array.shift
#   character_array
# end

def leading_substrings(string)
  string.chars.map.with_index do |_, index|
    string[0..index]
  end
end

p leading_substrings('abc')
p leading_substrings('a')
p leading_substrings('xyzzy')
