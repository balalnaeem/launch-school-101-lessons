=begin
Create a function that takes the month and year (as integers) and returns the number of days in that month.

In: months and year(integers)
Out: number of days in the month(integer)

rules: have to see if the year is leap year. Because in that case Feb would have 29 days

Al:
- create a constant variable set it equal to a hash with month numbers and number of days in that month
- def a method that takes two integers as arguments
  - frist integer is months
  - second integer is years
  - we need to check the first integer and see if 2,
    - if it is 2, we will check if the year was leap year
      - if it is a leap year we will add one day to the answer
  - if the month is not february, we go stratight to the answer
  - we get the answer by using our hash

=end

DAYS_PER_MONTH = {
  1  => 31,
  2  => 28,
  3  => 31,
  4  => 30,
  5  => 31,
  6  => 30,
  7  => 31,
  8  => 31,
  9  => 30,
  10 => 31,
  11 => 30,
  12 => 31
}

def leap_year?(year)
  (year % 400 == 0) || (year % 4 == 0 && year % 100 != 0)
end

def day_amount(month, year)
  return DAYS_PER_MONTH[month] unless month == 2
  leap_year?(year) ? DAYS_PER_MONTH[month] + 1 : DAYS_PER_MONTH[month]
end

# require 'date'

# def day_amount(month, year)
#   Date.new(year, month, -1).day

# end

# p day_amount(2, 2000)

















