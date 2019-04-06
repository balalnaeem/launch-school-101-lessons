=begin

Write a method named include? that takes an Array and a search value as arguments. This method should return true if the search value is in the array, false if it is not. You may not use the Array#include? method in your solution.

In: Array and search value
Out: boolean

Rules: return true if the seach value exists in the array, false otherwise

Al:
  -def a method that takes 2 arguments
  iterate over the array, checking if any element is equal to the search val
  return true if it is
  trailing false
=end

def include?(arr, val)
  arr.any?(val)
end

puts include?([1,2,3,4,5], 3) == true
puts include?([1,2,3,4,5], 6) == false
puts include?([], 3) == false
puts include?([nil], nil) == true
puts include?([], nil) == false