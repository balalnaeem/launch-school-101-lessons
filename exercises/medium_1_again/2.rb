=begin
Write a method that can rotate the last n digits of a number. For example:

Rules:
- Note that rotating just 1 digit results in the original number being returned.
- rotating just one digit returns the original number

In: 2 integers
Out: integer

Al:
- use the rotate_array method from the last exercise
- conver the number into array of digits
- take the last n digits and call the rotate_method array on them
- add the arr[0..size-n] + resulting array
- join the array and call to_i on the string
=end
def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

def rotate_rightmost_digits(int, n)
  all_digits = int.digits.reverse
  rotated_digits = all_digits.take(all_digits.size-n) + rotate_array(all_digits[-n..-1])
  rotated_digits.join.to_i
end


#*** TEST CASES ***

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917