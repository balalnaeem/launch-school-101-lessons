=begin

Write a method that takes a string as an argument and returns a new string in which every uppercase letter is replaced by its lowercase version, and every lowercase letter by its uppercase version. All other characters should be unchanged.

In: String
Out: String
Rules:  You may not use String#swapcase; write your own version of this method.

Al:
  -def a method that takes a string as an argument
    -split the string into an array for iteration purposes
    -Iterate over the string for transformation
    -iterate over each word, by converting it into chars
      -check if the letter is Uppercase
        convert to lower
      -if letter is lowercase
        convert to upper
        return the joined array to outer iteration method
  -end

=end

def swapcase(str)
  str.chars.map { |e| e =~ /[a-z]/ ? e.upcase : e.downcase }.join
end

puts swapcase('CamelCase') == 'cAMELcASE'
puts swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'