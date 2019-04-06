=begin
*** Word to digit ***

In: sentence string
Out: sentence string

Rule: All the words that represent a number, should be converted to equivalent string digits.

Al:
  -initialize a hash with words and corresponding string digits as pairs of keys and values
  -def a method that takes a string as an argument
    -split the string into an array for iteration purpose
    -Iterate over that array for transformation purpose
      -check if the current word matches any of the keys in the hash
      -if it does replace the current word with the correspoding value of that key
      -join the resulting array and return

=end
STR_DIGITS = {
  'zero'  => '0',
  'one'   => '1',
  'two'   => '2',
  'three' => '3',
  'four'  => '4',
  'five'  => '5',
  'six'   => '6',
  'seven' => '7',
  'eight' => '8',
  'nine'  => '9'
}

def word_to_digit str
  result_str = ''
  str.split.each do |word|
    if (word.include?('.') && STR_DIGITS.keys.include?(word.chop) )
      result_str << STR_DIGITS[word.chop]
      result_str << '. '
    elsif STR_DIGITS.keys.include?(word)
      result_str << STR_DIGITS[word]
    else
      result_str << "#{word} "
    end
  end
  result_str.chop if result_str[-1] == " "
end


puts word_to_digit('Please call me at five five five one two three four. Thanks.') #== 'Please call me at 5 5 5 1 2 3 4. Thanks.'
