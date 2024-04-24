def average(array, float:false)
  length = (float ? array.length.to_f : array.length)
  array.inject(:+) / length
end

p average([1, 6], float: true)
p average([1, 5, 87, 45, 8, 8])
p average([9, 47, 23, 95, 16, 52])
