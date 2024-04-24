def featured(number)
  index = number + 1
  index += 1 until index.odd? && index % 7 == 0
  loop do 
    return index if index.to_s.scan(/(\d)\d*\1/).empty?
    index += 14
    break if index >= 9876543210
  end
  "There are no possible numbers that fufills the requirements"
end

puts featured(12)
puts featured(20)
puts featured(21)
puts featured(997)
puts featured(1029)
puts featured(999_999)
puts featured(999_999_987)
puts featured(9_999_999_999)
