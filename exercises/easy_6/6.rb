=begin

Write a method that takes two Arrays as arguments, and returns an Array that contains all of the values from the argument Arrays.

In: two arrays
Out one array

Rule: There should be no duplication of values in the returned Array, even if there are duplicates in the original Arrays.

Al:
  -def a method that takes two arrays as arguments
    + the arrays and unique on them

=end

def merge(arr1, arr2)
  (arr1 + arr2).uniq
end

puts merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]