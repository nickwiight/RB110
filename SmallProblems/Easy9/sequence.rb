def sequence(count, first_number)
  array = []
  return array if count == 0

  1.upto(count) do |multiple|
    array << (first_number * multiple)
  end
  array

  (1..count).map { |number| number * first_number }
end

p sequence(5, 1)
p sequence(4, -7)
p sequence(3, 0)
p sequence(0, 1000000)
