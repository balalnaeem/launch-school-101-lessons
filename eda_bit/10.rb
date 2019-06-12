def format_phone_number(arr)
  str_num = ''
  str_num << '('
  3.times { str_num << arr.shift.to_s }
  str_num << ') '
  3.times { str_num << arr.shift.to_s }
  str_num << '-'
  4.times { str_num << arr.shift.to_s }
  str_num
end

p format_phone_number([1, 2, 3, 4, 5, 6, 7, 8, 9, 0])