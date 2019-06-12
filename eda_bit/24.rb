=begin Create a function that takes two arguments: an array and a number. In the array (the first argument), if an element occurs more than N times (the second argument), remove the extra occurrence(s) and return the result.

In: array, integer
Out: array

Al:
- given = arr, num
- initialize a local variable and set it equal to an empty array
- iterate over the given arr
    - on each iteration check if the current element exists more than num times in the new array
    - if it does, go to next iteration
    - if it doesn't insert the element in to the new array
- return the new array
=end

def delete_occurrences(arr, num)
  result_arr = []
  arr.each do |ele|
    result_arr.count(ele) < num ? result_arr << ele : next
  end
  result_arr
end


p delete_occurrences([1, 1, 1, 1], 2)
p delete_occurrences([13, true, 13, nil], 1)
p delete_occurrences([true, true, true], 3)