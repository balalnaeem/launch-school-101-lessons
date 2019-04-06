=begin

Write a method that takes any year greater than 0 as input, and returns true if the year is a leap year, or false if it is not a leap year.

In:  a year
Out: boolean

Rules:
  -leap years occur in every year that is evenly divisible by 4
  -unless the year is also divisible by 100
  -If the year is evenly divisible by 100, then it is not a leap year unless the year is evenly divisible by 400.
  -year has to be greater than 0
  -return true if it's leap year, false otherwise

Al:
  -def a method that takes a year as an argument
    -some sort of IF ELSE condition statement
      IF year % 400 == 0
        true
      ELSIF year % 100 == 0 && year % 4 == 0
        false
      ELSIF year % 4 == 0
        true
      ELSE
        false
      end
=end

def leap_year?(year)
  if year % 400 == 0
    true
  elsif (year % 100 == 0 && year % 4 == 0)
    false
  elsif year % 4 == 0
    true
  else
    false
  end
end

puts leap_year?(2016) == true
puts leap_year?(2015) == false
puts leap_year?(2100) == false
puts leap_year?(2400) == true
puts leap_year?(240000) == true
puts leap_year?(240001) == false
puts leap_year?(2000) == true
puts leap_year?(1900) == false
puts leap_year?(1752) == true
puts leap_year?(1700) == false
puts leap_year?(1) == false
puts leap_year?(100) == false
puts leap_year?(400) == true