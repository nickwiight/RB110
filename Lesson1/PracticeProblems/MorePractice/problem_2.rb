ages = { 
  'Herman' => 32, 
  'Lily' => 30, 
  'Grandpa' => 5843, 
  'Eddie' => 10, 
  'Marilyn' => 22,
  'Spot' => 237
}

age_sum = 0
ages.each_value do |value|
  age_sum += value
end

puts age_sum
