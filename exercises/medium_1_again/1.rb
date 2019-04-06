=begin

Write a method that rotates an array by moving the first element to the end of the array.

Rules:
- Do not use the method Array#rotate or Array#rotate! for your implementation.
- The original array should not be modified.

In: array
Out: array

Al:
- def a method that takes an array as an argument
  - reassign that array to a new local variable
  - remove the first element
  - push that element into the array with a shovel operator
  -return the modified array


**Further Exploration
Write a method that rotates a string instead of an array. Do the same thing for integers. You may use rotate_array from inside your new method.
=end

def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

def rotate_string(str)
  rotate_array(str.chars).join
end

def rotate_number(int)
  rotate_array(int.digits.reverse).join.to_i
end


# *** TEST CASES ***

p rotate_number(12345)

# p rotate_string('hello')

# p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
# p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
# p rotate_array(['a']) == ['a']

# x = [1, 2, 3, 4]
# p rotate_array(x) == [2, 3, 4, 1]   # => true
# p x == [1, 2, 3, 4]


