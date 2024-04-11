MINUTES_PER_DAY = 24 * 60

def after_midnight(time)
  hour, minute = format_string(time)
  while hour > 23
    hour -= 24
  end
  (hour * 60) + minute
end

def before_midnight(time)
  hour, minute = format_string(time)
  while hour > 23
    hour -= 24
  end
  (MINUTES_PER_DAY - (hour * 60) - minute) % MINUTES_PER_DAY
end

def format_string(string)
  array = string.split(':')
  return array.first.to_i, array.last.to_i
end

puts after_midnight('00:00')
puts before_midnight('00:00')
puts after_midnight('12:34')
puts before_midnight('12:34')
puts after_midnight('24:00')
puts before_midnight('24:00')
