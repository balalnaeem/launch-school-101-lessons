=begin

Given a string of words separated by spaces, write a method that takes this string of words and returns a string in which the first and last letters of every word are swapped.

In: string of words
Out: string of words, with first and alst letters of each words swapped

Rules : You may assume that every word contains at least one letter, and that the string will always contain at least one word. You may also assume that each string contains nothing but words and spaces

Al:
  -def a method that takes a string as an argument
  -convert the string into an array
  -iterate over that array
    operate over each element
    swapping the first letter with the last
    insert the word into a new array
  join the new array at the end of iteration
=end

def swap(str)
  swapped_words = []
  new_word = ''

  str.split.each do |word|
    new_word = word.chars.join
    new_word[0] = word.slice(word.length - 1)
    new_word[word.length - 1] = word.slice(0)
    swapped_words << new_word
  end
  swapped_words.join(" ")
end

puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
puts swap('Abcde') == 'ebcdA'
puts swap('a') == 'a'