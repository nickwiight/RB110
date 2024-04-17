def merge(array1, array2)
  new_array = array1 + array2
  new_array.uniq
end

p merge([1, 3, 5], [3, 6, 9])
