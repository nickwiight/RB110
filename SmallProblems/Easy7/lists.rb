# def multiply_list(array1, array2)
#   new_array = []
#   array1.length.times { |index| new_array << (array1[index] * array2[index]) }
#   new_array
# end

def multiply_list(array1, array2)
  array1.zip(array2).map { |sub_array| sub_array.inject(:*) }
end

p multiply_list([3, 5, 7], [9, 10, 11])
