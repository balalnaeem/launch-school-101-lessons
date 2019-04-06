=begin

Write a method that takes one argument, a string containing one or more words, and returns the given string with all five or more letter words reversed. Each string will consist of only letters and spaces. Spaces should be included only when more than one word is present.

In: String (containing five or more letter word/words)
Out: given string with words reversed

Al:
  - def a method that takes a string as an argument
  - separate the letter in an array
  - reverse them
  - join them
=end

def reverse_words(string)
  arr = string.split.map do |word|
    if word.size > 4
      word.reverse
    else
      word
    end
  end
  arr.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS