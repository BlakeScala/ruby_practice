def clock_angle(time)
  time_parts = time.split(':')
  hours = time_parts[0].to_f
  minutes = time_parts[1].to_f
  hourHandAngle = hours * 30 + (minutes * 0.5)
  minuteHandAngle = minutes * 6
  
  result = (hourHandAngle - minuteHandAngle).abs()
  
  if result > 180
    result = 360 - result
  end

  return result
end

angleDifference = clock_angle(ARGV[0])
puts angleDifference
