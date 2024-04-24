def substrings(string)
  array = []

  string.size.times do |index|
    1.upto(string.size - index) { |size| array << string[index, size] }
  end

  array
end

p substrings('abcde')
