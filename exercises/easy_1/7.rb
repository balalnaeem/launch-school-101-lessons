=begin

Write a method that takes one argument, a positive integer, and returns a string of alternating 1s and 0s, always starting with 1. The length of the string should match the given integer.

In: a positive integer
Out: string of alternating 1's and 0's.

Rule: length of the string should match the given positive integer

Al:
  - def a method that takes a positive integer as an argument
    - initialize an empty string
    - use an iterator to append 1's and 0's into that empty string (3.times)
    - Determine what's last character of the string
    - Based on that append the next character

Further Exploration
Modify stringy so it takes an optional argument that defaults to 1. If the method is called with this argument set to 0, the method should return a String of alternating 0s and 1s, but starting with 0 instead of 1.
=end


def stringy(num, first='1')
  second = '0'
  second = '1' if first == '0'

  str = ''
  num.times do
    if ( str.empty? || str.end_with?(second) )
      str << first
    else
      str << second
    end
  end
  str
end

puts stringy(6, '0') == '010101'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7, '0') == '0101010'