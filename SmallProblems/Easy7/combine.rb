def interleave(array1, array2)
  new_array = []

  array1.length.times do |index|
    new_array << array1[index]
    new_array << array2[index]
  end

  new_array
end

# def interleave(array1, array2)
#   array1.zip(array2).flatten(1)
# end

p interleave([1,2,3], ['a', 'b', 'c'])
