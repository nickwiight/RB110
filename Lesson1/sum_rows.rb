# Imagine a sequence of consecutive even integers beginning with 2. The integers 
# are grouped in rows, with teh first row containing one integer, the second 
# row two integers, the third row three integers, and so on. Given an intger 
# representing the number of a particular row, return an integer representing 
# the sum of all the ingeters in that row

def sum_row(row_number)
  pattern_index = sum_one_to_number(row_number)
  index = 0
  sum = 0
  while index < row_number
    index += 1
    pattern_index += 1
    sum += pattern_index * 2
  end
  sum
end

def sum_one_to_number(number)
  sum = 0
  index = 0
  while index < number
    sum += index
    index += 1
  end
  sum
end

puts sum_row 1
puts sum_row 2
puts sum_row 4
