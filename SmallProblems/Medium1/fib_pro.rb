def fibonacci(number)
  num1 = 1
  num2 = 1
  3.upto(number) do
    sum = num1 + num2
    num1 = num2
    num2 = sum
  end
  num2
end

puts fibonacci(1)
puts fibonacci(3)
puts fibonacci(20)
puts fibonacci(100)
puts fibonacci(100_001)
