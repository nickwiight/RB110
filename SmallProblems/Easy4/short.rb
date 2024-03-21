def short_long_short(string_1, string_2)
  if string_1.size > string_2.size 
    string_2 + string_1 + string_2
  else
    string_1 + string_2 + string_1
  end
end

puts short_long_short('abc', 'defgh')
puts short_long_short('abcde', 'fgh')
puts short_long_short('', 'xyz')
