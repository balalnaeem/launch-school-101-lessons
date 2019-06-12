=begin
Create a function that takes three arguments (x, y, z) and returns an array containing subarrays (e.g. [[], [], []])

x argument: Number of subarrays contained within the main array.
y argument Number of items contained within each subarray(s).
z argument: Item contained within each subarray(s).

Rules:
The first two arguments will always be valid integers.
The third is either a string or an integer.
You can expect valid input for all test cases.

In: 2 integers and 1 either a string or an integer
Out: an array of sub arrays

Al:
- create an empty array
- use the times method, inside the method call create another empty array that will be used as a sub array
- in the sub array, insert the items
- insert the sub array into the arary outside of the method
=end

def matrix(x, y, z)
  result_arr = []
  x.times do
    sub_arr = []
    y.times { |n| sub_arr << z }
    result_arr << sub_arr
  end
  result_arr
end

p matrix(3, 2, 3)
p matrix(2, 1, "edabit")
p matrix(3, 2, 0)