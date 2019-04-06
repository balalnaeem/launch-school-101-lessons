=begin

Write a method that takes an Array of numbers, and returns an Array with the same number of elements, and each element has the running total from the original Array.

In: Array of numbers
Out: Another array with the same number of elements as original array. And each element has the running total of from the original array.

Al:
  -def a method that takes an array as an argument
    -initialize a variable equal to zero
    -initialize a new array
    -iterate over the original array
      -increase the variable with the value of element
      -append the variable to the new array
    -return the new array
=end

# def running_total(arr)
#   current_total = 0
#   new_arr = []
#   arr.each do |ele|
#     new_arr << (current_total += ele)
#   end
#   new_arr
# end

def running_total(arr)
  sum = 0
  arr.map { |ele| sum += ele }
end

def running_total(arr)
  sum = 0
  arr.each_with_object([]) { |ele, array| array << sum += ele}
end

def running_total(arr)
  new_arr = []
  arr.inject(0) do |sum, n|
    new_arr << (sum + n)
    sum + n
  end
  new_arr
end

puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []