DIGITS = %w[0 1 2 3 4 5 6 7 8 9]

def signed_integer_to_string(number)
  array = number.abs.digits.reverse
  string = ''

  array.each { |num| string << DIGITS[num] }
  sign = number < 0 ? '-' : '+'
  string = sign + string if number != 0

  string
end

puts signed_integer_to_string(4321) == '+4321'
puts signed_integer_to_string(-123) == '-123'
puts signed_integer_to_string(0) == '0'
