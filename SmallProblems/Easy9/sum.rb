def sum(number)
  number.digits.inject(:+)
end

puts sum(23)
puts sum(496)
puts sum(123456789)
