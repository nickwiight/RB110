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

p rotate_rightmost_digits(735291, 1)
p rotate_rightmost_digits(735291, 2)
p rotate_rightmost_digits(735291, 3)
p rotate_rightmost_digits(735291, 4)
p rotate_rightmost_digits(735291, 5)
p rotate_rightmost_digits(735291, 6)
