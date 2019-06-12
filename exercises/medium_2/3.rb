=begin
Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the percentage of characters in the string that are lowercase letters, one the percentage of characters that are uppercase letters, and one the percentage of characters that are neither.

In: string
Out: hash

Rules:
- hash will represent the percentages of character mix, uppercase, lowercase and neither
- spaces, numbers etc will be considered as neither

Al:
- set a variable equal to the total length of the string
- convert the given string into an array and select the lowercase and uppercase letters and neither ones
- insert the percentages into the hash
=end

def letter_percentages(string)
  total_length = string.length.to_f
  lowercase_letters = string.chars.select { |e| e =~ /[a-z]/ }.size
  uppercase_letters = string.chars.select { |e| e =~ /[A-Z]/ }.size
  neither = total_length - (lowercase_letters + uppercase_letters)
  lower_percent = (lowercase_letters/total_length * 100)
  upper_percent = (uppercase_letters/total_length * 100)
  neither_percent = (neither/total_length * 100)
  {lowercase: lower_percent, uppercase: upper_percent, neither: neither_percent}
end


p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }