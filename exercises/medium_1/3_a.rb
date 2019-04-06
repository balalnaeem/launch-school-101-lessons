def max_rotation num
  num_digits = num.digits.reverse
  final_digits = []
  loop do
    num_digits = num_digits[1..-1] + [num_digits[0]]
    final_digits << num_digits.shift
    break if num_digits.size < 1
  end
  final_digits.join.to_i
end

puts max_rotation(735291) == 321579
puts max_rotation(735291) == 321579
puts max_rotation(3) == 3
puts max_rotation(35) == 53
puts max_rotation(105) == 15 # the leading zero gets dropped
puts max_rotation(8_703_529_146) == 7_321_609_845