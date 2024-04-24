def rotate_array(array)
  copy = array.dup
  copy.push(copy.shift)
end

def rotate_rightmost_digits(number, count)
  digits = number.digits.reverse
  rotate = rotate_array(digits[digits.size - count, count])
  remainder = digits[0, digits.size - count]
  (remainder + rotate).flatten.join.to_i
end

def max_rotation(number)
  result = number
  number.digits.length.downto(2) do |n|
    result = rotate_rightmost_digits(result, n)
  end
  result
end

puts max_rotation(735291)
puts max_rotation(3)
puts max_rotation(35)
puts max_rotation(105)
puts max_rotation(8_703_529_146)
