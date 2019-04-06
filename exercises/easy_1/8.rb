=begin

Write a method that takes one argument, an array containing integers, and returns the average of all numbers in the array. The array will never be empty and the numbers will always be positive integers.

In: array of positive integer
Out: average of all numbers in the array

Rule: Array will never be empty. Numbers will always be positive integers.

Al:
  - def a method that takes an array of positive integers
  - call Array#sum on that array => resulting number
  - divide the resulting number with the size of the array
=end

def average(arr)
  (arr.sum / arr.size).to_f
end

puts average([1, 5, 87, 45, 8, 8])
puts average([9, 47, 23, 95, 16, 52])