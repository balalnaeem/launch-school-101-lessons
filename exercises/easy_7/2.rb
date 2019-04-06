=begin

Write a method that takes a string, and then returns a hash that contains 3 entries: one represents the number of characters in the string that are lowercase letters, one the number of characters that are uppercase letters, and one the number of characters that are neither.

In: string
Out: Hash

Al
  -

=end

UPPER_CASE = ('A'..'Z').to_a
LOWER_CASE = ('a'..'z').to_a

def letter_case_count(str)
  new_hash = {lowercase: 0, uppercase: 0, neither: 0}
  str.chars.each do |ele|
    if UPPER_CASE.include?(ele)
      new_hash[:uppercase] += 1
    elsif LOWER_CASE.include?(ele)
      new_hash[:lowercase] += 1
    else
      new_hash[:neither] += 1
    end
  end
  new_hash
end

puts letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
puts letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
puts letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
puts letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
