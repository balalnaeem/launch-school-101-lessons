=begin
Create a function that takes in a date and returns the correct century.

In: Integer
Out: String

Rules:

century(1756) ➞ "18th century"
century(1000) ➞ "10th century"

Al:

for numbers that not exactly divisible by 100
  divide them by 100 and add 1
for numbers that are multiples of 100
  divide them by 100 and that's it
=end

def century(year)
  num = year % 100 == 0 ? year / 100 : (year / 100) + 1
  str_num = num.to_s
  case
    when num == 11 then str_num + 'th century'
    when num == 12 then str_num + 'th century'
    when num == 13 then str_num + 'th century'
    when num % 10 == 1   then str_num + 'st century'
    when num % 10 == 2   then str_num + 'nd century'
    when num % 10 == 3   then str_num + 'rd century'
    else str_num + 'th century'
  end
end

p century(2112)
