=begin

In: Integer
Out: Integer

Al
-def a method that takes an integer as an argument
  -initialize an empty string
  -convert that integer into string
  -convert that string into an array
  -save that array in a variable
  -start some sort of looping construct
    rotate the arary (use our rotate array method)
    take the first string digit and insert that into the empty string
    break if arr.size == 1
  -return the string onverted into int
=end
# require 'pry'

# def rotate_arr arr
#   arr[1..-1] + [arr[0]]
# end

def max_rotation int
  final_string = ''
  string_digits = int.to_s.chars
  loop do
    string_digits = rotate_arr(string_digits)
    final_string << string_digits.shift
    break if string_digits.size <  1
  end
  final_string.to_i
end


puts max_rotation(735291) == 321579
puts max_rotation(735291) == 321579
puts max_rotation(3) == 3
puts max_rotation(35) == 53
puts max_rotation(105) == 15 # the leading zero gets dropped
puts max_rotation(8_703_529_146) == 7_321_609_845
