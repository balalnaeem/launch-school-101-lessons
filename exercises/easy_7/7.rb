=begin

Write a method that takes an Array of integers as input, multiplies all the numbers together, divides the result by the number of entries in the Array, and then prints the result rounded to 3 decimal places. Assume the array is non-empty.

In: array
Out: integer rounded to 3 decimal places

Al:
  -def a method that takes an array of integers as input
  -with the use of inject find out the mutiplication total
  divide that total with the length of the array
  print the result rounded to 3 decimals

=end

def show_multiplicative_average(arr)
  total = arr.inject(:*)
  average = total / arr.size.to_f
  puts "The result is %0.3f" % [average]
end

show_multiplicative_average([3, 5])
show_multiplicative_average([6])
show_multiplicative_average([2, 5, 7, 11, 13, 17])
