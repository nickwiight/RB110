def oddities(array)
  new_array = []
  array.each_with_index { |value, index| new_array << value if index.even? }
  new_array
end

def evenities(array)
  new_array = []
  array.each_with_index { |value, index| new_array << value if index.odd? }
  new_array
end

p oddities([2, 3, 4, 5, 6])
p oddities([1, 2, 3, 4, 5, 6])
p oddities(['abc', 'def'])
p oddities([123])
p oddities([])
p oddities([1, 2, 3, 4, 1])
puts '-----------------'
p evenities([2, 3, 4, 5, 6])
p evenities([1, 2, 3, 4, 5, 6])
p evenities(['abc', 'def'])
p evenities([123])
p evenities([])
p evenities([1, 2, 3, 4, 1])
