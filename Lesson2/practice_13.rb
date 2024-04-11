array = [[1, 6, 9], [6, 1, 7], [1, 8, 3], [1, 5, 9]]

array.sort_by! do |sub_array|
  sub_array.select(&:odd?)
end

p array
