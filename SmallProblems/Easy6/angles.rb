DEGREE_SYMBOL = "\xC2\xB0"

def dms(angle)
  degrees = angle.to_i
  minutes_float = (angle - degrees) * 60
  minutes = minutes_float.to_i
  seconds = ((minutes_float - minutes) * 60).to_i
  degrees %= 360
  format(%(#{degrees}#{DEGREE_SYMBOL}%02d'%02d"), minutes, seconds)
end

puts dms(30)
puts dms(76.73)
puts dms(254.6)
puts dms(93.034773)
puts dms(0)
puts dms(360)
puts dms(400)
