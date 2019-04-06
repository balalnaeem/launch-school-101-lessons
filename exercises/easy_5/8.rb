=begin

Write a method that takes an Array of Integers between 0 and 19, and returns an Array of those Integers sorted based on the English words for each number:

In: Array of inegres between 0 and 19
Out: Array of those integers, sorted on the base of the english words for each number

Al:
  -firs of all, define a constant with the english words for numbers from 0 to 19
  -define a methos that takes an array of integers
  -sort that array based on the english word of each integer

=end

ZERO_NINETEEN = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve", "thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]

def alphabetic_number_sort(arr)
  arr.sort_by { |num| ZERO_NINETEEN[num] }
end

def alphabetic_number_sort(arr)
  arr.sort { |num1, num2| ZERO_NINETEEN[num1] <=> ZERO_NINETEEN[num2] }
end

p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]