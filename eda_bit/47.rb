=begin
Write a function that divides an array into chunks of size n, where n is the length of each chunk.
It's O.K. if the last chunk is not completely filled.

In: array, an integer
Out: array of sub arrays

Rules:
- size of each sub array should be equal to given integer
- except the last sub array, size of last sub array can be smaller than the given integer, depending on the available elements left in the given array

Al:
- initialize a local variable and set it equal to an empty array, main-arr = []
- initialize a local variable and set it equal to an empty array, sub_arr = []
- iterate over the given array with index
  - on each iteration insert the current element into the sub_arr
  -check if sub_arr size is equal to given integer
      if it is, insert the sub_arr into main_arr
      and set the sub array equal to []
-end of iteration
- insert the sub_arr into main_arr is sub_arr size > 0 (to get the left over elements)
-return the main array
=end

def chunkify(arr, int)
  main_arr, sub_arr = [], []
  arr.each do |char|
    sub_arr << char
    if sub_arr.size == int
      main_arr << sub_arr
      sub_arr = []
    end
  end
  main_arr << sub_arr if sub_arr.size > 0
  main_arr
end

 def chunkify(arr, size)
   arr.each_slice(size).to_a
 end

p chunkify([2, 3, 4, 5], 2)
p chunkify([2, 3, 4, 5, 6], 2)