array = [[2], [3, 5, 7, 12], [9], [11, 13, 15]]

new_array = array.map do |sub_array|
  sub_array.select do |number|
    number % 3 == 0
  end
end

p new_array
