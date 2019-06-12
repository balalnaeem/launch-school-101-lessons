=begin
Create a function that takes an array of numbers and returns an array where each number is the sum of itself + all previous numbers in the array.
[1, 2, 3] = [1, 3, 6]

Rules:
Return an empty array if the input is an empty array.

In: array
Out: array

Al:
- initialize a local variable running_sum and set it equal to zero
- create new empty array
- iterate over the array
    on each iteration add the current integer into the running_sum
    and insert the sum into new empty array
- return the new empty array
=end

def cumulative_sum(arr)
  result_arr, running_total = [], 0
  arr.each do |num|
    running_total += num
    result_arr << running_total
  end
  result_arr
end

def cumulative_sum(arr)
  s = 0
  arr.map { |v| s = v + s }
end
p cumulative_sum([]) == []
p cumulative_sum([1, -2, 3]) == [1, -1, 2]
p cumulative_sum([3, 3, -2, 408, 3, 3]) == [3, 6, 4, 412, 415, 418]