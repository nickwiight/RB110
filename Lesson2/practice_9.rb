array = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]

array.each do |sub_array|
  sub_array.sort do |a, b|
    b <=> a
  end
end
