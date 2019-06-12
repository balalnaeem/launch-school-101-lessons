=begin
Write a method that takes a sentence string as input, and returns the same string with any sequence of the words 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.

Rules:
- word number strings converted into digit strings.
- If they appear in a sequence??

In: String
Out: String

Al:
- def a method that takes a string as an argument
  -split the string into array of word elements
  -iterate over the array, on each iteration check if the word is one of the number words
    -if it is, replace it with a digit string
    - else leave the word alone
  -join the returning array

  how am I going to check if word is one of the number words??

- I create a hash with all the number words starting from zero to nine, with words as keys and numbers as values
=end

NUMBERS = {
  "zero"  => '0',
  "one"   => '1',
  "two"   => '2',
  "three" => '3',
  "four"  => '4',
  "five"  => '5',
  "six"   => '6',
  "seven" => '7',
  "eight" => '8',
  "nine"  => '9'
}

def word_to_digit(str)
  NUMBERS.keys.each do |word|
    str.gsub!(/\b#{word}\b/, NUMBERS[word])
  end
  str
end

p word_to_digit('Please call me at five five five one two three four in the evening. Thanks.') #== 'Please call me at 5 5 5 1 2 3 4. Thanks.'








