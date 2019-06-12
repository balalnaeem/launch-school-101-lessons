=begin
Write a method that takes a string argument and returns a new string that contains the value of the original string with all consecutive duplicate characters collapsed into a single character.

Rules:
-all same characters in a row should be collapsed into single character

=end

def collapse(str)
  str.chars.reject.with_index { |e, i| e == str[i+1] }.join
end

p collapse('bbbbbbbbb') == 'b'
p collapse('wwooonndeerrfull woorrlldd') == 'wonderful world'
p collapse('222xyzxyzyx') == '2xyzxyzyx'
p collapse('Q') == 'Q'
p collapse('AAbbCC') == 'AbC'
p collapse('') == ''