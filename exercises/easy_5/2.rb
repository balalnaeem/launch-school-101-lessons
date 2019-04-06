=begin

Write a method that takes a time using this minute-based format and returns the time of day in 24 hour format (hh:mm). Your method should work with any integer input.

In: a positive negative integer(minutes)
Out: time of day in 24 hour format (hh:mm)

Rules: You may not use ruby's Date and Time classes.

Al:
  -initialize few constants
    minutes_per_hour
    hours_per_day
    minutes_per_day
  -def a method that takes a integer as an argument

=end

def time_of_day(m_offset)
  hours = m_offset % 1440 / 60
  mins = m_offset % 1440 % 60
  sprintf('%02d:%02d', hours, mins)
end

puts time_of_day(-3) == "23:57"