=begin

In: string
Out : array

Al:
  -def a method that takes string as an argument
  -initialize an empty array
  -initialize an empty variable
    -start iterating over the


=end

def substrings(str)
  substrings_arr = []
  chars = 1
  idx = 0
  substring_size = str.size
  loop do
    loop do
      break if chars > substring_size
      substrings_arr << str.slice(idx, chars)
      chars += 1
    end
    chars = 1
    idx += 1
    substring_size -= 1
    break if idx >= str.size
  end
  substrings_arr
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]