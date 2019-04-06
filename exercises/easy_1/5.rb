=begin

Write a method that takes one argument, a string, and returns a new string with the words in reverse order.

In: a string
Out: new string in reverse order

Al:
  - split the string into an array
  - intialize a new empty string
  - some sort of loop
      pop the last elements of the string and shove them into the new empty string
      add a break condition
  - end the loop

  return the new string

=end
# require 'pry'

def reverse_sentence(string)
  string.split.reverse.join(' ')
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'