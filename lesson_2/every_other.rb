# a method that takes an array of integers, and returns a new array with every other element

=begin

IN: array of integers
OUT: new array with every other integer from the original input array

AL:
  -define a method that takes an array as an argument
    -SET an ampty array
    -SET a counter
    -iterate over that array selecting every other element
      -if counter is even.?, go to next iteration
    -return the new array
  -end method

=end

def every_other(arr)
  new_array = []
  arr.each_with_index do |int, index|
    new_array << int if index.even?
  end
  new_array
end

integers = [1,2,3,4,5,6,7,8,9,10]
puts every_other(integers)
