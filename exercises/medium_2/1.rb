=begin
Write a program that reads the content of a text file and then prints the longest sentence in the file based on number of words. Sentences may end with periods (.), exclamation points (!), or question marks (?). Any sequence of characters that are not spaces or sentence-ending characters should be treated as a word. You should also print the number of words in the longest sentence.

In: contents of text file (strings)
Out: 1) longest sentence based on number of words (string)
     2) number of words in that sentence (integer)

Rules:
- sentences may with '.', '!' or '?'.
- any other characters excluding spaces, shall be counted as words

Al:
- find out how to read a text file first and put the sentences into an array
- iterate over the sentences array, and find out the length of each sentence, insert the lengths into a new array
-select the longest sentence into a variable
-print the sentence


=end

# file = ARGV[0]
# text = File.read(file)

# sentences_arr = text.split(/[.?!]/).map { |line| line.lstrip }
# sentences_lengths = []
# sentences_arr.each do |line|
#   sentences_lengths << line.split.size
# end
# longest_sentence = sentences_arr.select { |line| line.split.size == sentences_lengths.max }.join

# puts "Longest sentence in the given file is #{sentences_lengths.max} words long and it is as following: #{longest_sentence}."

#### Keeping period at the end of each sentence


# text = File.read("text.txt")
# sentences_arr = text.split(/[.?!]/).map { |line| line.lstrip }
# sentences_arr = sentences_arr.map { |line| line << "." }
# longest_sentence = sentences_arr.max_by { |line| line.split.size }
# puts "#{longest_sentence}"
# puts "Containing #{longest_sentence.split.size} words"

#### Finding the longest word

# text = File.read("text.txt")
# sentences_arr = text.split(/[.?!]/).map { |line| line.lstrip }
# words_arr = sentences_arr.map { |line| line.split }.flatten
# longest_word = words_arr.max_by { |word| word.length }
# puts "The longest word is '#{longest_word}' and it contains #{longest_word.size} letters."

#### Finding the longest paragraph

text = File.read("text.txt")
paragraphs = text.split(/[\n]/)
longest_para = paragraphs.max_by { |para| para.split.size }
puts "The longest para contains #{longest_para.split.size} words and is printed below."
puts "#{longest_para}"













