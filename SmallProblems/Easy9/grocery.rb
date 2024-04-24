def buy_fruit(list)
  list.map do |fruit, quantity|
    [fruit] * quantity
  end.flatten
end

p buy_fruit([['apples', 3], ['orange', 1], ['banannas', 2]])
