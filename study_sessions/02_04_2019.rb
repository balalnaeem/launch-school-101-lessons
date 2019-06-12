# Write a method that takes a string input, and returns the first character that is not repeated anywhere in the string.

# For example, if given the input 'stress', the method should return 't', since the letter t only occurs once in the string, and occurs first in the string.

# Upper- and lowercase letters are considered the same character, but the method should return the correct case for the initial letter. For example, the input 'sTreSS' should return 'T'.

# If a string contains all repeating characters, it should return an empty string ("")

#************************

# we are given a string that may have repeating characters.
# We are required to return the first non-repeating character in the string. 'Stress' => 't'
# Upper and lower case letters will be counted together. But we will still return the correct given letter. 'sTreet' => 'r'
# if a string contain, all repeating letters, should return empty string. 'aabbccddd' => ''
# Empty string should return empty as well.
# repeating chars coul be anywhere in the string - doesn't have to be consecutive repeating
# string numbers will treated as chars as well.
# strings will single words

 # input: string
 # output: string (a character, or an empty string)

# Approach - convert the string into array of chars, iterate over that array, check if char(case insensitive) has been repeated in the array, if it is, skip that char, go to the next one, if it's not, return that char

def first_non_repeating_letter(str)
  non_repeats = str.chars.reject do |chr|
    str.downcase.count(chr.downcase) > 1
  end
  non_repeats.empty? ? "" : non_repeats.first
end

p first_non_repeating_letter('a') == 'a'
p first_non_repeating_letter('aabbcc') == ''
p first_non_repeating_letter('sTreSS') == 'T'
p first_non_repeating_letter('moonmen') == 'e'
p first_non_repeating_letter('') == ''
p first_non_repeating_letter('sTreet') == 's'
