=begin

Modify the word_sizes method from the previous exercise to exclude non-letters when determining word size. For instance, the length of "it's" is 3, not 4.

In: string
Out: hash containig lenghts and counts of words
Rules: Do not count the non alphabetic characters

Al:
  -define a method(that takes a string as an argument)
    -use a modified version of 'cleanup' method to clear out the non-alphabetic characters
    -then use the method in previous exercise

=end

def cleanup(str)
  str.gsub(/[^a-zA-Z" "]/, '')
end

def word_sizes(str)
  str = cleanup(str)
  str.split.each_with_object(Hash.new(0)) {|word, hash|  hash[word.length] += 1 }
end

puts word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
puts word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
puts word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
puts word_sizes('') == {}