def count_occurences(array)
  hash = Hash.new(0)
  array.each { |element| hash[element] += 1 }
  hash.each { |key, value| puts "#{key} => #{value}"}
end

vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurences(vehicles)
