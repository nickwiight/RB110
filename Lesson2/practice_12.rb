array = [
  [:a, 1], 
  ['b', 'two'], 
  ['sea', {c: 3}], 
  [{a: 1, b: 2, c: 3, d: 4}, 'D']
]

hash = {}

array.each do |sub_array|
  hash[sub_array[0]] = sub_array[1]
end

p hash
