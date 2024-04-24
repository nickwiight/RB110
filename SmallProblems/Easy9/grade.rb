def get_grade(*scores)
  mean = scores.sum / scores.length.to_f
  case mean
  when (90..) then 'A'
  when (80...90) then 'B'
  when (70...80) then 'C'
  when (60...70) then 'D'
  else 'F'
  end
end

p get_grade(95, 90, 93)
p get_grade(50, 50, 95)
