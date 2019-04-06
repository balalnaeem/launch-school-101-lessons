=begin

Write a method that takes an Array, and returns a new Array with the elements of the original list in reverse order. Do not modify the original list.

In: Array
Out: Array(new object, in reverse order)

Rules: You may not use Array#reverse or Array#reverse!, nor may you use the method you wrote in the previous exercise.

Al:
  -def a method that takes and array
    -iterate over the array with the reverse_each method
    -and insert the each element into the new array
    -return the new array
  -end

=end

# def reverse(arr)
#   reversed_arr = []
#   arr.reverse_each { |e| reversed_arr << e }
#   reversed_arr
# end

def reverse(arr)
  arr.inject([]) { |new_arr, e| new_arr.unshift(e) }
end

puts reverse([1,2,3,4]) == [4,3,2,1]          # => true
puts reverse(%w(a b e d c)) == %w(c d e b a)  # => true
puts reverse(['abc']) == ['abc']              # => true
puts reverse([]) == []

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
puts list.object_id != new_list.object_id  # => true
puts list == [1, 3, 2]                     # => true
puts new_list == [2, 3, 1]