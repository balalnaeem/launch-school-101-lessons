=begin

Write a method that combines two Arrays passed in as arguments, and returns a new Array that contains all elements from both Array arguments, with the elements taken in alternation.

You may assume that both input Arrays are non-empty, and that they have the same number of elements.

In: 2 arrays
Out: An array

Al:
  -def a method that takes two arrays as arguments
    -initialize an empty array
    -some sort of looping construct
      -insert elements  to the empty array from each argument arrays, one by one
      -break if arrays are empty
  -end
=end

def interleave(arr1, arr2)
  combined_arr = []
  loop do
    combined_arr << arr1.shift
    combined_arr << arr2.shift
    break if arr1.empty?
  end
  combined_arr
end

def interleave(arr1, arr2)
  (arr1.zip(arr2)).flatten
end

puts interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']