=begin

Write a method that takes one argument, a positive integer, and returns the sum of its digits.

In: a positive integer
Out: Sum of it's digits

Al:
  - def a method that takes a positive integer as an argument
      convert the ineger into a string.
      convert the string into an array.
      Iterate over the array, converting strings to numbers and adding them together
=end

def sum(int)
  int.to_s.chars.map(&:to_i).reduce(:+)
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45