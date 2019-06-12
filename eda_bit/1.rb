=begin

Create a function that takes an array of numbers and returns the sum of the two lowest positive numbers.

in: array
out: Integer
rules:
-do not consider the negative numbers
-sum of two lowest positive numbers

Al:
- sort the array, delete the numbers less than zeros, select the first two numbers, sum them up, return the integer
=end
require 'pry'
def sum_two_smallest_nums(arr)
  positive_numbers = arr.sort.delete_if { |e| e < 0 }.take(2).sum
end

p sum_two_smallest_nums([2, 9, 6, -1])
p sum_two_smallest_nums([1, 1, 1, 1])
p sum_two_smallest_nums([-1, -1, 1, 1])