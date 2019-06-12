=begin

create mexican wave of a string.

In: String
Out: Array
Rules:
  -array would include all variations of the given string, with only one letter upcased in each variation, starting from first to last.
  -empty strings will return empty array

Al:
-def a method that takes a string as an argument
  split the string into characters array
  initialize a counter variable
  iterate over the array
  for each character
      split the string into chars and upcase the required character, then join the string and return that word
=end


p wave("just do it")