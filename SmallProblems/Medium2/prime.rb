def prime?(number)
  return false if number == 1
  2.upto(number - 1) do |divisor|
    return false if number % divisor == 0
  end
  true
end

p prime?(1)
p prime?(2)
p prime?(3)
p prime?(4)
p prime?(5)
p prime?(6)
p prime?(7)
p prime?(8)
p prime?(9)
p prime?(10)
p prime?(23)
p prime?(24)
p prime?(997)
p prime?(998)
p prime?(3_297_061)
p prime?(23_297_061)
