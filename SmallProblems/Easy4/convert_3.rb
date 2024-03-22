DIGITS = %w[0 1 2 3 4 5 6 7 8 9]

def integer_to_string(integer)
  array = integer.digits.reverse
  string = ''

  array.each { |number| string << DIGITS[number] }
  string
end

# somewhat cheat method I came up with first
# def integer_to_string(integer)
#   integer.digits.reverse.join
# end

puts integer_to_string(4321) == '4321'
puts integer_to_string(0) == '0'
puts integer_to_string(5000) == '5000'
