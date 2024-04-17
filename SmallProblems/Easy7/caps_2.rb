# def staggered_case(string)
#   staggered_string = ''
#   string.chars.each_with_index do |character, index|
#     staggered_string << (index.even? ? character.upcase : character.downcase)
#   end
#   staggered_string
# end

def staggered_case(string, first_character_upcase: true)
  first_character_upcase = !first_character_upcase
  string.chars.map do |character|
    if character.match?(/[a-zA-Z]/)
      first_character_upcase = !first_character_upcase
      first_character_upcase ? character.upcase : character.downcase
    else
      character
    end
  end.join
end

puts staggered_case('I Love Launch School!')
puts staggered_case('ALL_CAPS')
puts staggered_case('ignore 77 the 444 numbers')
