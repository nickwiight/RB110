def reverse!(array)
  reverse_array = []
  array.each { |element| reverse_array.unshift(element) }
  reverse_array
end

def test(array)
  array_string = array.inspect
  array_id = array.object_id
  result = reverse!(array)
  result_id = result.object_id
  puts "original array: #{array_string}"
  puts "reversing array"
  puts "result: #{result.inspect}"
  puts "original array #{array.inspect}"
  puts "array id: #{array_id}"
  puts "result id: #{result_id}"
end

test([1, 2, 3, 4])
test(%w(a b e d c))
test(['abc'])
test([])
