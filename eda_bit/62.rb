=begin
From the solution i can see that we are given two arguments:
1) an array of integers
2) an integer
And we are ouputting an array of integers. From the output we can deduce that those are remainders of each given array element divided by the given integer.

Keeping that in mind. Algorithm will be a simple map over the array.
=end
def remainders(arr, int)
  arr.map { |num| num % int }
end

p remainders([5, 7, 8, 2, 1], 2) == [1, 1, 0, 0, 1]