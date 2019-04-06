=begin

Write a method that returns the number of Friday the 13ths in the year given by an argument. You may assume that the year is greater than 1752 (when the United Kingdom adopted the modern Gregorian Calendar) and that it will remain in use for the foreseeable future.

In: integer (year)
Out: integer (numer of fridays 13th in that year)

Al:
- require 'date' class
- define a method that takes an integer year as an argument
- initialize a local variable 'fridays' and set it equal to zero
- initialize a new date, 13 of the jan in the given year and assign it to a local variable
- some sort of looping construct
- check if the given date is friday?
  if it is, increment the fridays variable by 1
    if not, go to the next month
  break out of that loop if you have checked all months in the year
  return the local variable fridays
=end

require 'date'

def friday_13th(year)
  fridays = 0
  thirteenth = Date.new(year, 1, 13)
  12.times do
    fridays += 1 if thirteenth.friday?
    thirteenth = thirteenth.next_month
  end
  fridays
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2



### FURTHER EXPLORATION ###

def five_fridays(year)
  months = 0
  current_date = Date.new(year, 1, 1)
  current_month = current_date.month
  loop do
    fridays = 0
    loop do
      fridays += 1 if current_date.friday?
      current_date = current_date.next_day
      break if current_date.month != current_month
    end
    current_month += 1
    months += 1 if fridays == 5
    break if year != current_date.year
  end
  months
end

p five_fridays(2021)














