DIGITS = {
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
}

def string_to_integer(string)
  array = string.chars.map { |char| DIGITS[char] }.reverse
  result = 0

  array.each_with_index do |number, index|
    result += number * (10**index)
  end
  result
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570

# further exploration
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

def hex_to_integer(hex_string)
  array = hex_string.chars.map { |char| HEX_DIGITS[char.upcase] }.reverse
  result = 0

  array.each_with_index do |number, index|
    result += number * (16**index)
  end
  result
end

puts hex_to_integer('4D9f') == 19871


# generic function
def string_to_base(string, power = 10)
  array = string.upcase.chars.map { |char| HEX_DIGITS[char] }.reverse
  result = 0

  array.each_with_index { |number, index| result += number * (power**index) }

  result
end

puts string_to_base('4321') == 4321
puts string_to_base('570') == 570
puts string_to_base('4D9f', 16) == 19871
puts string_to_base('11111111', 2) == 255
puts string_to_base('1011111010111101', 2) == 48829
