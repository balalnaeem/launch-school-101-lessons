=begin
Create a function that takes an array of positive and negative numbers. Return an array where the first element is the count of positive numbers and the second element is the sum of negative numbers.

Rules:
- If the input array is empty, return an empty array.
- zero is a positive integer

In: array of integers
Out: array of integers(2 elements)

Al:
- create a variable count = 0
- create a variable sum = 0
- iterate over the array and if the number is negative add that to sum, else increment the count
- return them in an array
=end

def sum_neg(arr)
  return arr if arr.empty?
  positive_count, negative_sum = 0, 0
  arr.each { |num| num < 0 ? negative_sum += num : positive_count += 1 }
  [positive_count, negative_sum]
end

def sum_neg(nums)
  nums.length > 0 ? [nums.select { |x| x > 0 }.count, nums.select { |x| x < 0 }.sum] : []
end

p sum_neg([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -15]) == [10, -65]

