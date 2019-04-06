=begin

Write a program that will ask a user for an input of a word or multiple words and give back the number of characters. Spaces should not be counted as a character.

In: a string of a single or multiple words
Out: Character count of that string

Rule: Spaces should not be counted as characters.

Al:
  -ask user to enter the word
  -save that word in a variable
  -count the characters in the string excluding variables
    (count all characters including spaces - count spaces)
=end

p "Please write a word of multiple words: "

word = gets.chomp

chars = word.length - word.count(" ")

puts "There are #{chars} characters in \"#{word}\"."