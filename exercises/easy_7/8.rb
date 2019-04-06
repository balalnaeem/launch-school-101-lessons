=begin

Write a method that takes two Array arguments in which each Array contains a list of numbers, and returns a new Array that contains the product of each pair of numbers from the arguments that have the same index.

You may assume that the arguments contain the same number of elements.

In: two arrays
Out: array

Al;
  -counter = 0
  new array = []
  loop do
    break if counter => arr1.size
    new_array << arr1[counter] * arr2[counter]
    counter += 1
  end

=end

# def multiply_list(arr1, arr2)
#   idx = 0
#   product_arr = []
#   loop do
#     break if idx >= arr1.size
#     product_arr << arr1[idx] * arr2[idx]
#     idx += 1
#   end
#   product_arr
# end

def multiply_list(arr1, arr2)
  arr1.zip(arr2).map { |a, b| a * b  }
end



p multiply_list([3, 5, 7], [9, 10, 11])
# == [27, 50, 77]





















