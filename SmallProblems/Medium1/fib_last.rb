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

def fib_last(number)
  last2 = [1, 1]
  3.upto(number) do 
    last2 = [last2.last, (last2.first + last2.last) % 10]
  end
  last2.last
end

puts fib_last(15)
puts fib_last(20)
puts fib_last(100)
puts fib_last(100_001)
puts fib_last(1_000_007)
puts fib_last(123456789)
