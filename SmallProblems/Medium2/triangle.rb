def triangle(side1, side2, side3)
  array = [side1, side2, side3].sort
  return :invalid if array[0, 2].sum < array[2]
  return :equilateral if array.count(array[0]) == 3
  return :scalene if array.uniq == array

  :isosceles
end

p triangle(3, 3, 3)
p triangle(3, 3, 1.5)
p triangle(3, 4, 5)
p triangle(0, 3, 3)
p triangle(3, 1, 1)
