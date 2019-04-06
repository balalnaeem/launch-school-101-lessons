=begin

Write a method that takes a string with one or more space separated words and returns a hash that shows the number of words of different sizes.

In: string
Out: hash
Rules: Words consist of any string of characters that do not include a space.
Al:
  -def a method that takes a string
  initialize an empty hash
  -split the string into an array
  -Iterate over the array
    counting the letter in each word = length
    check if the the key of that same length exists in the hash already
    if it does, just increase the value by 1 = hash[length] + 1
    if it doesn't, insert the key value pair into that hash = hash[length] = 1
=end

def word_sizes(str)
  sizes_hash = {}
  str = str.split.sort_by { |word| word.length }

  str.each do |word|
    if sizes_hash.key?(word.length)
      sizes_hash[word.length] += 1
    else
      sizes_hash[word.length] = 1
    end
  end
  sizes_hash
end

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
puts word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
puts word_sizes('') == {}