HEX_DIGITS = {
  '0' => 0,
  '1' => 1,
  '2' => 2,
  '3' => 3,
  '4' => 4,
  '5' => 5,
  '6' => 6,
  '7' => 7,
  '8' => 8,
  '9' => 9,
  'A' => 10,
  'B' => 11,
  'C' => 12,
  'D' => 13,
  'E' => 14,
  'F' => 15,
}

SIGNS = ['-', '+']

def string_to_signed_base(string, power = 10)
  array = string.upcase.delete('+-').chars.reverse.map do |char|
    HEX_DIGITS[char]
  end
  result = 0

  array.each_with_index { |number, index| result += number * (power**index) }

  result *= -1 if string[0] == '-'

  result
end

puts string_to_signed_base('4321') == 4321
puts string_to_signed_base('-570') == -570
puts string_to_signed_base('+100') == 100
