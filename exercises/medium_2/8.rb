=begin
A featured number (something unique to this exercise) is an odd number that is a multiple of 7, and whose digits occur exactly once each. So, for example, 49 is a featured number, but 98 is not (it is not odd), 97 is not (it is not a multiple of 7), and 133 is not (the digit 3 appears twice).

In: integer
Out: integer

Rules:
- output integer should come after the input integer
- should be a muliple of seven
- should be even
- it's digits should not occur more than once

Al:
- def a method that takes an integer as an argument
- initialize a variable featured_num and set it equal to the next number that is divisible by 7 after the given number
- some sort of looping construct
- break if
    featured number is odd? && it's digits only occur once
- increment the number by 7
=end

def featured(num)
  next_num = num + (7 - (num % 7))
  loop do
    break if next_num.odd? && next_num.digits == next_num.digits.uniq
    next_num += 7
    return "There is no possible number that fulfills those requirements." if next_num > 9_876_543_210
  end
  next_num
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987
p featured(9_999_999_999)














