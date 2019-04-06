=begin

Write a method that takes a String of digits, and returns the appropriate number as an integer. The String may have a leading + or - sign; if the first character is a +, your method should return a positive number; if it is a -, your method should return a negative number. If no sign is given, you should return a positive number.

In: A positive or negative sting integer
Out: Appropriate integer

Al:
  -use the method from previous exercise
  -define a new method (two args = string, base)
    -check if the string has a preceding symbol
    -in case, there is no symbol or positive symbol, use the string to integer method
    -if there is negative symbol, chop it off, use the string to integer method and multiply the result with -1
=end

# require 'pry'

INTEGER = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7,
  '8' => 8, '9' => 9, 'a' => 10, 'b' => 11, 'c' => 12, 'd' => 13, 'e' => 14,'f' => 15
}

def string_to_integer(str, base=10)
 str.downcase.chars.inject(0) { |result, ele| result * base + INTEGER[ele] }
end

def string_to_signed_integer(str, base=10)
  if str.chars.include?('-') || str.chars.include?('+')
    sign = str.slice!(0)
  end

  if sign == '-'
    string_to_integer(str) * -1
  else
    string_to_integer(str)
  end
end

puts string_to_signed_integer('4321') == 4321
puts string_to_signed_integer('-570') == -570
puts string_to_signed_integer('+100') == 100