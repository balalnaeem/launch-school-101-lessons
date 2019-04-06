=begin
Write a method that can rotate the last n digits of a number. For example:
In: 2 integers (number and the last digits to be rotated)
Out: Integer

Al:
-def a method that takes a two integers as argument, num, rotation_digits
-call digits on the num = array of numbers in reverse ord
-partition the array into two arrays, based on the index of the elements, save them into two new array
-reverse the one you need to reverse and add, join and to_s
=end

def rotate_array arr
  rotated_arr = Array.new(arr)
  rotated_arr.shift
  rotated_arr << arr.first
end

def rotate_integer int
  rotate_array(int.digits.reverse)
end

def rotate_rightmost_digits(number, last_digits)
  number_arr = number.digits.reverse
  start_indx = number_arr.length - last_digits
  first_half, second_half = number_arr.partition { |n| number_arr.index(n) < start_indx }
  second_half = rotate_integer(second_half.join.to_i)
  (first_half + second_half).join.to_i
end

puts rotate_rightmost_digits(735291, 1) == 735291
puts rotate_rightmost_digits(735291, 2) == 735219
puts rotate_rightmost_digits(735291, 3) == 735912
puts rotate_rightmost_digits(735291, 4) == 732915
puts rotate_rightmost_digits(735291, 5) == 752913
puts rotate_rightmost_digits(735291, 6) == 352917