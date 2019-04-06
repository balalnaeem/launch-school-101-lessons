=begin

Write a method that takes a String of digits, and returns the appropriate number as an integer. You may not use any of the methods mentioned above.

In: a string of digits
Out: appropriate number

Rules: You may not use any of the standard conversion methods available in Ruby, such as String#to_i, Integer(), etc. Your method should do this the old-fashioned way and calculate the result by analyzing the characters in the string.

=end

INTEGER = {
  '0' => 0,
  '1' => 1,
  '2' => 2,
  '3' => 3,
  '4' => 4,
  '5' => 5,
  '6' => 6,
  '7' => 7,
  '8' => 8,
  '9' => 9,
  'a' => 10,
  'b' => 11,
  'c' => 12,
  'd' => 13,
  'e' => 14,
  'f' => 15
}

def string_to_integer(str, base=10)
 str.downcase.chars.inject(0) { |result, ele| result * base + INTEGER[ele] }
end


puts string_to_integer('4D9f', 16) == 19871
puts string_to_integer('4321') == 4321
puts string_to_integer('570') == 570
puts string_to_integer('1376', 8) == 766
puts string_to_integer('11111111', 2) == 255
puts string_to_integer('1011111010111101', 2) == 48829


