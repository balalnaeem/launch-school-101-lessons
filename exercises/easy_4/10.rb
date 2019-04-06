=begin

In the previous exercise, you developed a method that converts non-negative numbers to strings. In this exercise, you're going to extend that method by adding the ability to represent negative numbers as well.

Write a method that takes an integer, and converts it to a string representation.

In: Integer
Out: string representation

Al:
  -use the method from previous exercise
  -def a method
  -

=end

def integer_to_string(int)
  int.digits.reverse.join
end

def signed_integer_to_string(int)
  return '0' if int.zero?
  sign = int < 0 ? '-' : '+'
  integer_to_string(int.abs).prepend(sign)
end

# def signed_integer_to_string(number)
#   case number <=> 0
#   when -1 then "-#{integer_to_string(-number)}"
#   when +1 then "+#{integer_to_string(number)}"
#   else         integer_to_string(number)
#   end
# end

puts signed_integer_to_string(4321) == '+4321'
puts signed_integer_to_string(-123) == '-123'
puts signed_integer_to_string(0) == '0'