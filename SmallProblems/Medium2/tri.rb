def triangle(angle1, angle2, angle3)
  angles = [angle1, angle2, angle3]
  return :invalid if angles.include?(0)
  return :invalid if angles.inject(:+) != 180
  return :obtuse if angles.max > 90
  return :right if angles.max == 90
  :acute
end

p triangle(60, 70, 50)
p triangle(30, 90, 60)
p triangle(120, 50, 10)
p triangle(0, 90, 90)
p triangle(50, 50, 50)
