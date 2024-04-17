# def find_fibonacci_index_by_length(length)
#   index = 2
#   fib_array = [1, 1]

#   until fib_array.last.digits.size >= length
#     number = fib_array[-2] + fib_array[-1]
#     fib_array << number
#     index += 1
#   end

#   index
# end

# someone's faster solution. It pulls the digit calculation out of the loop to 
# speed it up
def find_fibonacci_index_by_length(length)
  target_number = 10**(length - 1)
  recent_numbers = [1, 1]
  index = 2

  until recent_numbers.last >= target_number
    number = recent_numbers.reduce(:+)
    recent_numbers.push(number).shift
    index += 1
  end
  
  index
end

puts find_fibonacci_index_by_length(2)
puts find_fibonacci_index_by_length(3)
puts find_fibonacci_index_by_length(10)
puts find_fibonacci_index_by_length(100)
puts find_fibonacci_index_by_length(1000)
puts find_fibonacci_index_by_length(10000)
