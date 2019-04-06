=begin

Write a method that determines and returns the ASCII string value of a string that is passed in as an argument. The ASCII string value is the sum of the ASCII values of every character in the string. (You may use String#ord to determine the ASCII value of a character.)

In: String
Out: ASCII string value

Al:
  -def a method that takes a string
  -convert string characters into array characters
  -iterate over the array finding ascii values of each character
  -sum all those values
  -return

=end

# def ascii_value(str)
#   str.chars.map { |char| char.ord  }.sum
# end

def ascii_value(str)
  str.chars.inject(0) { |result, char| result + char.ord }
end

puts ascii_value('Four score') == 984
puts ascii_value('Launch School') == 1251
puts ascii_value('a') == 97
puts ascii_value('') == 0
