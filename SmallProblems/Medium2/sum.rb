def sum_square_difference(index)
  sum_square = (1..index).sum**2
  square_sum = (1..index).sum(&:abs2)
  sum_square - square_sum
end

puts sum_square_difference(3)
puts sum_square_difference(10)
puts sum_square_difference(1)
puts sum_square_difference(100)
