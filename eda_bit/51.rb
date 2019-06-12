=begin
write a method that returns every substring inside a word. Except the single letter substrings.

we are given a one word string and we have to find out all the substrings inside that word that are at least two chars long. Empty strings will return empty string.

In: string
Out: array of strings

approach: convert the strings into chars. start some sort of loop to iterate over the chars, and make all the substring, including the one letter ones(i can reject them out later).

starting pointing, that will increase after each iteration
ending point, that will decrease after each iteration

Al:
-convert the string into an array of chars
-iterate over the array with index
  -inside each iteration, create a range from current index to the end of the string (idx..string.size)


=end

def substrings(str)
  result_arr = []

  str.chars.each_with_index do |_, start_idx|
    (start_idx+1..str.size-1).each do |end_idx|
      p "#{start_idx} - #{end_idx}"
      result_arr << str[start_idx..end_idx]
    end
  end
  result_arr
end

p substrings('Hello') #== ['He', 'Hel', 'Hell', 'Hello', 'el', 'ell', 'ello', 'll', 'llo', 'lo']
# p substrings('band') == ['ba', 'ban', 'band', 'an', 'and', 'nd']
# p substrings('world') == %w(wo wor worl world or orl orld rl rld ld)