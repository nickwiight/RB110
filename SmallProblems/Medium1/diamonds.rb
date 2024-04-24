def diamond(number)
  count = 0
  stars = 1
  half = number / 2

  while count < number
    # string = '*' * stars
    string = (stars == 1 ? '*' : "*#{' ' * (stars - 2)}*")
    puts string.center(number)
    count < half ? stars += 2 : stars -= 2
    count += 1
  end
end

diamond(1)
diamond(3)
diamond(9)
