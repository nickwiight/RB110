def include?(array, value)
  array.each { |element| return true if element == value }
  false
end

# better version
# def include?(array, value)
#   array.any?(value)
# end

puts include?([1, 2, 3, 4, 5], 3)
puts include?([1, 2, 3, 4, 5], 6)
puts include?([], 3)
puts include?([nil], nil)
puts include?([], nil)
