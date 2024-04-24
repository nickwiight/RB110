def twice(number)
  double?(number) ? number : number * 2
end

def double?(number)
  digits = number.digits.reverse
  return false if digits.length.odd?

  length = digits.length / 2
  left_half = digits[0, length]
  right_half = digits[length, length]
  return true if left_half == right_half

  false
end

puts twice(37)
puts twice(44)
puts twice(334433)
puts twice(444)
puts twice(107)
puts twice(103103)
puts twice(3333)
puts twice(7676)
puts twice(123_456_789_123_456_789)
puts twice(5)
