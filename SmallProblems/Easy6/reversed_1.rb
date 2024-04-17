def reverse!(array)
  reverse_array = []
  array.each { |element| reverse_array.unshift(element) }
  array.length.times { |index| array[index] = reverse_array[index] }
  array
end

def test(array)
  array_string = array.inspect
  result = reverse!(array)
  puts "original array: #{array_string}"
  puts "reversing array"
  puts "result: #{result.inspect}"
  puts "original array #{array.inspect}"
end

test([1, 2, 3, 4])
test(%w(a b e d c))
test(['abc'])
test([])
