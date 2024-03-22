def leap_year?(year)
  is_leap_year = false
  is_leap_year = true if year % 4 == 0

  if year > 1752
    is_leap_year = false if year % 100 == 0
    is_leap_year = true if year % 400 == 0
  end

  is_leap_year
end

puts leap_year? 2016
