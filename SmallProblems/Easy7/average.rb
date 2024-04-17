def show_multiplicative_average(array)
  average = array.inject(:*) / array.length.to_f
  puts format('The result is %.3f', average)
end

show_multiplicative_average([3, 5])
show_multiplicative_average([6])
show_multiplicative_average([2, 5, 7, 11, 13, 17])
