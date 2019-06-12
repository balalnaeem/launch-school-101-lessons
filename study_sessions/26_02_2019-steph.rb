# You are given an array of positive integers and for each index you want to find the product of every integer except the integer at that index.

# Write a method that takes an array of integers and returns an array of the products.
# Don't worry about input validation or an empty array as input - you only have to handle the test cases provided.

# p get_products([1, 7, 3, 4]) == [84, 12, 28, 21]
# p get_products([1, 7, 3, 4]) == [84, 12, 28, 21]
# p get_products([1, 2, 3, 0, 5]) == [0, 0, 0, 30, 0]

=begin
In: array of positive integers
Out: array of positive integers

Rules: every element in the output array would be the result of multiplication of all elements except the current indexed element

Al:
-def a method that takes an array of integers
  -iterate over the array
    -remove the current element from the array
    -find out the product of the rest of the array
=end

def get_products(arr)
  current_idx = -1
  arr.map do  |ele|
    current_idx += 1
    arr.reject { |e| arr[current_idx] == e }.inject(:*)
  end
end

def get_products(arr)
  results = []
  arr.size.times do |idx|
    temp_arr = arr.dup
    temp_arr.delete_at(idx)
    results << temp_arr.reduce(:*)
  end
  results
end


p get_products([1, 7, 3, 4]) == [84, 12, 28, 21]
p get_products([1, 2, 3, 0, 5]) == [0, 0, 0, 30, 0]
