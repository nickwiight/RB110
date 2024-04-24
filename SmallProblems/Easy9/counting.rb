def sequence(number)
  array = []
  1.upto(number) { |i| array << i }
  array
  (1..number).to_a
end

p sequence(5)
p sequence(3)
p sequence(1)
