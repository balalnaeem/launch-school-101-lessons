=begin
Write a method that returns a list of all substrings of a string that are palindromic.
The return value should be arranged in the same sequence as the substrings appear in the string.
Duplicate palindromes should be included multiple times.
In addition, assume that single characters are not palindromes.

In: string
Out: array

Al:
-write a method that takes a string as an argument
  -use the previous substring method to find all substrings
  -use select to choose the palindrommic substrings only, also rejecting single letter characters
=end

def substrings_at_start(str)
  substrings = []
  current_substring = ''
  str.chars.each do |char|
    if char =~ /[a-z0-9]/i
      current_substring += char
      substrings << current_substring
    else
      next
    end
  end
  substrings
end

def substrings(str)
  result = []
  (0...str.size).each do |start_index|
    this_substring = str[start_index..-1]
    result.concat(substrings_at_start(this_substring))
  end
  result
end

def palindromes(str)
  substrings(str).select do |sub_str|
    (sub_str.downcase == sub_str.downcase.reverse && sub_str.size > 1)
  end
end

p palindromes('abcd') # == []
p palindromes('madam') # == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') #== [
#   'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
#   'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
#   '-madam-', 'madam', 'ada', 'oo'
# ]
p palindromes('knitting cassettes')# == [
#   'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
# ]














