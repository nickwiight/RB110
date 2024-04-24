def sum_of_sums(array)
  sum = 0
  array.count.times do |index|
    count = index
    local_sum = 0
    while count >= 0
      local_sum += array[count]
      count -= 1
    end
    sum += local_sum
  end
  sum
end

puts sum_of_sums([3, 5, 2])
puts sum_of_sums([1, 5, 7, 3])
puts sum_of_sums([4])
puts sum_of_sums([1, 2, 3, 4, 5])
