=begin
Write a method that returns 2 times the number provided as an argument, unless the argument is a double number; double numbers should be returned as-is.

In: Integer
Out: Integer

Al:
-def a method that takes an integer as an argument
  -convert the number into string
  -divide the string into half and compare with the other half to see if it's a double number
  -if it is return the number
  -if not x it 2
-end

=end

def twice(num)
  str_num = num.to_s
  mid_point = str_num.size / 2
  first_half_str = str_num[0, mid_point]
  second_half_str =  str_num[mid_point..mid_point]
  if str_num.size.odd?
    num * 2
  else
    first_half_str == second_half_str ? num : num * 2
  end
end


puts twice(37) == 74
puts twice(44) == 44
puts twice(334433) == 668866
puts twice(444) == 888
puts twice(107) == 214
puts twice(103103) == 103103
puts twice(3333) == 3333
puts twice(7676) == 7676
puts twice(123_456_789_123_456_789) == 123_456_789_123_456_789
puts twice(5) == 10