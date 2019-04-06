=begin

In: positive integer or zero
Out: string representation of that number

Rules: You may not use any of the standard conversion methods available in Ruby, such as Integer#to_s, String(), Kernel#format, etc. Your method should do this the old-fashioned way and construct the string by analyzing and manipulating the number.

Al:
  -define a method that takes a number as an argument
  -convert the number into array of it's digits
  -iterate over that digits array
    -alternate the digits with string representations
    -save them in an array/ transform
    -join and return
=end

# def digit_to_string(digit)
#   case digit
#   when 0 then '0'
#   when 1 then '1'
#   when 2 then '2'
#   when 3 then '3'
#   when 4 then '4'
#   when 5 then '5'
#   when 6 then '6'
#   when 7 then '7'
#   when 8 then '8'
#   else '9'
#   end
# end

# def integer_to_string(int)
#   int.digits.reverse.map { |digit| digit_to_string(digit) }.join
# end

def integer_to_string(int)
  int.digits.reverse.join
end

puts integer_to_string(4321) == '4321'
puts integer_to_string(0) == '0'
puts integer_to_string(5000) == '5000'