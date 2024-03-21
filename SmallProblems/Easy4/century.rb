def century(year)
  century = year.ceil(-2) / 100
  suffix = case century % 10
           when 1 then 'st'
           when 2 then 'nd'
           when 3 then 'rd'
           else 'th'
           end
  suffix = 'th' if [11, 12, 13].include? century % 100
  century.to_s + suffix
end

puts century(2000)
puts century(2001)
puts century(1965)
puts century(256)
puts century(5)
puts century(10103)
puts century(1052)
puts century(1127)
puts century(11201)
