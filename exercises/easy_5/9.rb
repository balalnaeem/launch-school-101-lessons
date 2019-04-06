=begin

Write a method that takes a string argument and returns a new string that contains the value of the original string with all consecutive duplicate characters collapsed into a single character.

In: string
Out: new_string

Rules: You may not use String#squeeze or String#squeeze!.

Al:
  -def a method that takes a string
    -initialize an empty string, in which I will push the new crunched words
    split the given string into and an array
      Iterate over the array going over each word
        chars the word and iterate over the chars
          push the character into the empty string if the previous character is not the same
        push a space character into the crunched_str after each word
    return the string
=end

def crunch(str)
  crunched_str = ''
  str.split.each do |word|
    word.chars.each do |char|
      crunched_str << char if char != crunched_str[-1]
    end
    crunched_str << " "
  end
  crunched_str.chop
end

def crunch(str)
  crunched_str = ''
  str.each_char { |c| crunched_str << c if c != crunched_str[-1] }
  crunched_str
end

puts crunch('ddaaiillyy ddoouubbllee') == 'daily double'
puts crunch('4444abcabccba') == '4abcabcba'
puts crunch('ggggggggggggggg') == 'g'
puts crunch('a') == 'a'
puts crunch('') == ''