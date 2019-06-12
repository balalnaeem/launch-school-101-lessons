=begin
first_non_repeated_character("it was then the frothy word met the round night") ➞ "a"

str.chars - str.chars.uniq

=end

def first_non_repeated_character str
  str.each_char do |char|
    return char if str.count(char) == 1
  end
end

p first_non_repeated_character("it was then the frothy word met the round night")
