# def friday_13th(year)
#   count = 0
#   1.upto(12) { |month| count += 1 if Time.new(year, month, 13).friday? }
#   count
# end

def friday_13th(year)
  (1..12).count { |month| Time.new(year, month, 13).friday? }
end

puts friday_13th(2015)
puts friday_13th(1986)
puts friday_13th(2019)
