=begin

Complete the solution so that the function will break up camel casing, using a space between words.

In: a string (camelCased)
Out: a string (broken up original string, with spaces between words)

Al:
- def a method that takes a string as an argument
  - initialize an empty string
  - split the strin into chars array
  - iterate over that, appending each character to the empty string
    - if the character is upcased, append a space char before that
  -return the the final string
=end

def solution(str)
  broken_str = ''
  str.chars.each { |char| broken_str << (char == char.upcase ? " #{char}" : char) }
  broken_str
end

def solution(str)
  str.chars.map { |e| e == e.upcase ? " #{e}" : e  }.join
end



p solution('camelCasing') == 'camel Casing'
p solution('camelCasingTest') == 'camel Casing Test'