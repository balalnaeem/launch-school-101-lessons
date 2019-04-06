=begin
Write a method that returns a list of all substrings of a string that start at the beginning of the original string. The return value should be arranged in order from shortest to longest substring.

In: string
Out: array

Al:
  -def a mehod that takes a string as an argument
  -initialize an empty arr
  -set counter = 0
  -start a looping construct
    break if counter >= string.size
    arr << str.slice(0, counter)
    counter += 1
    end
    arr
=end

def substrings_at_start(str)
  substrings = []
  chars = 1
  loop do
    break if chars > str.size
    substrings << str.slice(0, chars)
    chars += 1
  end
  substrings
end

def substrings_at_start(str)
  substrings = []
  current_substring = ''
  str.chars.each do |char|
    current_substring += char
    substrings << current_substring
  end
  substrings
end


p substrings_at_start('abc') == ['a', 'ab', 'abc']
puts substrings_at_start('a') == ['a']
puts substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']


