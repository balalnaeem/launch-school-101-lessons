def turn(num)
  case num
  when 1
    'first'
  when 2
    'second'
  when 3
    'third'
  when 4
    'fourth'
  when 5
    'fifth'
  when 6
    'last'
  end
end

number_arr = []
counter = 1

loop do
  puts "==> enter the #{turn(counter)} number:"
  number_arr << gets.to_i
  counter += 1
  break if counter > 6
end

last_number = number_arr.pop

if number_arr.include?(last_number)
  puts "The number #{last_number} appears in the #{number_arr}"
else
  puts "The number #{last_number} does not appears in the #{number_arr}"
end