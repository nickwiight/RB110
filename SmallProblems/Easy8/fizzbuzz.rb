def fizzbuzz(starting_number, ending_number)
  result = []
  starting_number.upto(ending_number) do |number|
    string = ''
    string << 'Fizz' if number % 3 == 0
    string << 'Buzz' if number % 5 == 0
    result << (string.empty? ? number.to_s : string)
  end
  result.join(', ')
end

# using map
# def fizzbuzz(starting_number, ending_number)
#   (starting_number..ending_number).map do |number|
#     string = ''
#     string << 'Fizz' if number % 3 == 0
#     string << 'Buzz' if number % 5 == 0
#     string.empty? ? number.to_s : string
#   end.join(', ')
# end

p fizzbuzz(1, 15)
