=begin

Write a method that returns true if the string passed as an argument is a palindrome, false otherwise. This time, however, your method should be case-insensitive, and it should ignore all non-alphanumeric characters.

In: a string
Out: Boolean (true if the string is palindrome)

Rules: - method should be case insensitive
       - should ignore all non_alphanumeric characters

Al:
  -def a method that takes a string as an argument
    - initialize an empty array
    - downcase the string
    - Iterate over the string checking each character
        if the character is alpha_numeric, insert it into the new empty
    _ after the iteration, check if the characters == characters.reversed
=end

def real_palindrome?(str)
  alpha_numerics =  ('a'..'z').to_a + (0..9).to_a.map(&:to_s)
  real_chars = []
  str.downcase.chars.each do |char|
    real_chars << char if alpha_numerics.include?(char)
  end
  real_chars == real_chars.reverse
end

puts real_palindrome?('madam') == true # ==> true
puts real_palindrome?('Madam') == true # ==> true
puts real_palindrome?("Madam, I'm Adam") == true # ==> true
puts real_palindrome?('356a653') == true # ==> true
puts real_palindrome?('123ab321') == false # ==> true