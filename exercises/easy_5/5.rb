=begin

Given a string that consists of some words and an assortment of non-alphabetic characters, write a method that returns that string with all of the non-alphabetic characters replaced by spaces. If one or more non-alphabetic characters occur in a row, you should only have one space in the result (the result should never have consecutive spaces).

In: string (with non alphabetic chars)
Out: string (withou non alphabetic character)

Rules: resulting string should not have consecutive spaces

Al:
  -def a method that takes a string
  -split that string into characters
  -iterate over those characters to see if they are an alphabetic character
  -if it's not, insert a space instead of that character into a new array
  -if it is then insert that character as well
  -join the array
=end

ALPHABETS = ('a'..'z').to_a + ('A'..'Z').to_a

def cleanup(str)
  alphabet_arr = []
  str.chars.each do |char|
    if ALPHABETS.include?(char)
      alphabet_arr << char
    else
      alphabet_arr << " "
    end
  end
  alphabet_arr.join.squeeze(" ")
end

puts cleanup("---what's my +*& line?") == ' what s my line '