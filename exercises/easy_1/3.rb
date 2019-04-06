=begin

Write a method that takes one argument, a positive integer, and returns a list of the digits in the number.

In: a positive integer
Out: a list of digits in the number (an array)

Al:
  - initialize a new array
  - explicit conversion of integer into string
  - call String#chars method on the resulting string => array of string digits
  - Iterate over the resulting array
    - call to_i on each string digit
    - append it to the new array

=end

def digit_list(num)
  num.to_s.chars.map(&:to_i)
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]

