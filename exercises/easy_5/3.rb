=begin

Write two methods that each take a time of day in 24 hour format, and return the number of minutes before and after midnight, respectively. Both methods should return a value in the range 0..1439.

In: time of the day in 24 hour format (a string)
Out: Mins before and after midnight (an integer)

Rules : Both methods should return a value in the range 0..1439.

Al:
  the logic I am thinking about is, split the string at :. Iterate over the array converting them into numbers, convert hours into minutes, add them all up, that should be the total number of minutes.

  after_mmidnigh ||

  -def a method(takes a string in hh:mm time format)
  -hours, mins = split the string at ':'
  -convert hours and minutes to integer to_i
  -convert hours into minutes and add them up.
  -that should be the answer

=end

def after_midnight(time)
  hours, mins = time.split(':').map(&:to_i)
  total_mins = hours * 60 + mins
  total_mins % 1440
end

def before_midnight(time)
  total_mins = 1440 - after_midnight(time)
  total_mins % 1440
end

puts after_midnight('00:00') == 0
puts after_midnight('12:34') == 754
puts after_midnight('24:00') == 0
puts after_midnight('24:00') == 0
puts before_midnight('00:00') == 0
puts before_midnight('12:34') == 686


