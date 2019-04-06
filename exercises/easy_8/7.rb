=begin
Write a method that takes a string, and returns a new string in which every character is doubled.

=end

def repeater(str)
  new_str = ''
  str.each_char { |char| new_str << char * 2 }
  new_str
end

puts repeater('Hello') == "HHeelllloo"
puts repeater("Good job!") == "GGoooodd  jjoobb!!"
puts repeater('') == ''