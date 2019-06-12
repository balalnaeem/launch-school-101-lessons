def counterpart_char_code(char)
  char.swapcase.ord
end

p counterpart_char_code('a') == 65
p counterpart_char_code('A') == 97
p counterpart_char_code('l') == 76
p counterpart_char_code('L') == 108
p counterpart_char_code('z') == 90
p counterpart_char_code('Z') == 122
p counterpart_char_code('5') == 53
p counterpart_char_code('$') == 36