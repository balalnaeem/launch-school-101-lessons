=begin

Write a method that takes an Array as an argument, and returns two Arrays (as a pair of nested Arrays) that contain the first half and second half of the original Array, respectively. If the original array contains an odd number of elements, the middle element should be placed in the first half Array.


In: array
Out: array ( with 2 arrays nested in it)

Al:
  -def a method that takes an array as an argument
    -find out the size of the array
    -half the size to
    -take elements from the array
    -drop elements from the array
  end
=end

def halvsies(arr)
  nested_arr = []
  half_point = (arr.size.to_f / 2).round
  nested_arr << arr.take(half_point)
  nested_arr << arr.drop(half_point)
  nested_arr
end

puts halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
puts halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
puts halvsies([5]) == [[5], []]
puts halvsies([]) == [[], []]