=begin

Write a method that takes an Array as an argument, and reverses its elements in place; that is, mutate the Array passed into this method. The return value should be the same Array object.

In: array
Out: array (reversed)

Rules:  -return value should be the same array object passed in as argument.
        -You may not use Array#reverse or Array#reverse!.
Al:
  -def a method that takes an array as argument
    -some sort of loop condition
    -pop the array and insert element into a new array
    -shift the new array and insert element back into the original array

=end

# def reverse_arr!(arr)
#   return arr if arr.empty?

#   arr_2 = []
#   loop do
#     arr_2 << arr.pop
#     break if arr.empty?
#   end

#   loop do
#     arr << arr_2.shift
#     break if arr_2.empty?
#   end
#   arr
# end

require 'pry'

def reverse_arr!(array)
  left_index = 0
  right_index = -1

  while left_index < array.size / 2
    array[left_index], array[right_index] = array[right_index], array[left_index]
    left_index += 1
    right_index -= 1
    binding.pry
  end
  array
end

list = [1,2,3,4,5]
result = reverse_arr!(list)
result == [5, 4, 3, 2, 1]
list == [5, 4, 3, 2, 1]
puts list.object_id == result.object_id

# list = %w(a b e d c)
# reverse_arr!(list) == ["c", "d", "e", "b", "a"]
# puts list == ["c", "d", "e", "b", "a"]

# list = ['abc']
# reverse_arr!(list) == ["abc"]
# puts list == ["abc"]

# list = []
# reverse_arr!(list) == []
# puts list == []

