=begin

Write a method that takes a single String argument and returns a new string that contains the original value of the argument with the first character of every word capitalized and all other letters lowercase.

In: String
Out: String

Al:
  -def a method that takes a string as an argument
    -split string and then iterate over it
      -downcase everyword
      -capitalize every word
      -join the return array
  -end

=end

# def word_cap(string)
#   string.split.map(&:capitalize).join(" ")
# end

def word_cap(string)
  capitalized_string = string.split.map do |word|
                         word = word.downcase
                         word[0] = word[0].upcase
                         word
                       end
  capitalized_string.join(" ")
end

puts word_cap('four score and seven') == 'Four Score And Seven'
puts word_cap('the javaScript language') == 'The Javascript Language'
puts word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'