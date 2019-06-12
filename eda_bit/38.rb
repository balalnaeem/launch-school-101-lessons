# Write a method that takes a string input, and returns the first character that is not repeated anywhere in the string.
# For example, if given the input 'stress', the method should return 't', since the letter t only occurs once in the string, and occurs first in the string.
# Upper- and lowercase letters are considered the same character, but the method should return the correct case for the initial letter. For example, the input 'sTreSS' should return 'T'.
# If a string contains all repeating characters, it should return an empty string ("")
=begin
Rules:
-case insenesitive,
-should return the given case of the letter though,
-if all characters are being repeated, it should return empty string,
-empty string should also return empty string

In: string
Out: string
AL:
return '' if str.empty?
if all the chars are repeating themselves, return '' as well
    if all the chars repeating themselves then str.chars.uniq.size will always be half or less then half of the str size.
-split the string into chars array
-iterate over the chars array
  - count each char, and see if it only occurs once
  - if it does, return that character
=end

def first_non_repeating_letter(str)
  return '' if str.empty? || str.chars.uniq.size <= str.size/2
  str.chars.each { |e| return e if str.downcase.count(e.downcase) == 1 }
end


p first_non_repeating_letter('a') == 'a'
p first_non_repeating_letter('aabbcc') == ''
p first_non_repeating_letter('sTreSS') == 'T'
p first_non_repeating_letter('moonmen') == 'e'
p first_non_repeating_letter('') == ''