def time_of_day(int)
  hour, minute = int.abs.divmod(60)
  while hour > 23
    hour -= 24
  end
  if int.negative?
    hour = 23 - hour
    minute = 60 - minute
  end
  '%02d:%02d' % [hour, minute]
end

# better solution following my logic
# uses modulo shenanigans

# def time_of_day(int)
#   hour, minute = int.divmod(60)
#   hour %= 24
#   '%02d:%02d' % [hour, minute]
# end

# given solution. Definitely neater than mine.

# def time_of_day(int)
#   while int.negative?
#     int += MINUTES_PER_DAY
#   end
#   int %= MINUTES_PER_DAY

#   hour, minute = int.abs.divmod(60)
#   '%02d:%02d' % [hour, minute]
# end

puts time_of_day(0)
puts time_of_day(-3)
puts time_of_day(35)
puts time_of_day(-1437)
puts time_of_day(3000)
puts time_of_day(800)
puts time_of_day(-4231)
