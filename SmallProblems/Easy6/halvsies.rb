def halvsies(array)
  half = (array.length / 2.0).round
  first_array = array[0...half]
  second_array = array[half..-1]

  [first_array, second_array]
end

p halvsies([1, 2, 3, 4])
p halvsies([1, 5, 2, 4, 3])
p halvsies([5])
p halvsies([])
