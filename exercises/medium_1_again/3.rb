=begin
Write a method that takes an integer as argument, and returns the maximum rotation of that argument. You can (and probably should) use the rotate_rightmost_digits method from the previous exercise.

Note that you do not have to handle multiple 0s.

In: integer
Out: integer

Rules: leading zero's get dropped.

Al:
-use the method in the previous exercise
-get the size of the integers in the given number
-start a loop
  - make a call to the last method, pass in the given number as argument with n == size of integer and set it equal to the number, so number becomes the return value of the method call
  - decrease the size by 1
  -break out of loop if the size < 2
  return integer
=end

def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

def rotate_rightmost_digits(int, n)
  all_digits = int.digits.reverse
  rotated_digits = all_digits.take(all_digits.size-n) + rotate_array(all_digits[-n..-1])
  rotated_digits.join.to_i
end

def max_rotation(integer)
  size = integer.digits.size
  loop do
    integer = rotate_rightmost_digits(integer, size)
    size -= 1
    break if size < 2
  end
  integer
end



#*** TEST CASES ***
p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845












