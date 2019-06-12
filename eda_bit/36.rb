=begin
Create a function that accepts an array of two strings and checks if the letters in the second string are present in the first string.

Rules:
case insensitivity
Both strings are presented as a single argument in the form of an array

In: array
Out: boolean

Al:
- iterate over the chars of the second word in the array
- on each iteration check if the current char is included in the first word
- if on any iteration, that returns false, return false
=end

def letter_check(arr)
  arr = arr.map(&:downcase)
  arr[1].chars.all? { |char| arr[0].include?(char) }
end

def letter_check(arr)
  (arr[-1].downcase.chars - arr.first.downcase.chars).empty?
end

p letter_check(["trances", "nectar"])
p letter_check(["parses", "parsecs"])
