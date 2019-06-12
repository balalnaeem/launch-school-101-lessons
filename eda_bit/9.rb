=begin

Create a function that takes a string and replaces every nth instance of old_char with new_char. Your function will have four parameters:

str — The original input text to be processed.
nth — The nth instance to be replaced.
old_char — The character being replaced.
new_char — The character replacing old_char.
In other words, if str is "abababa", nth is 3, old_char is "a" and new_char is "Z", you would replace the 3rd insrtance of "a" with "Z", returning "ababZba".

In: string
Out: string
rules: If nth is 0, negative or larger than instances of old_char, return the original string.
       Tests are case sensative.

we are given a string, a number(n), old char and a new char. in the string we replace every nth old char with the new char and return that string. i.e. if string is 'abababababab' and n = 3, old char = 'a' and new char = 'Z' we will return 'ababZbababZb'.

Al:
- if n is <= 0, or greater than rindex of old char, we return the string as it is
- initialize a variable counter set it equal to zero
- conver the string into array of chars
- iterate over that array, checking each element if it is old char
- if it is old char, we add one to our counter variable, and see if the counter is a multiple of n. if it is , we replace the old char with the new one.
- if it is not old char, we simple go to next iteration
  we join the resulting array and return the string
=end


def replace_nth(str, nth, old_char, new_char)
  return str if nth <= 0 || nth > str.rindex(old_char)
  counter = 0
  str.chars.map do |char|
    if char == old_char
      counter += 1
      counter.modulo(nth).zero? ? new_char : old_char
    else
      char
    end
  end.join
end


p replace_nth("The clock within this blog and the clock on my laptop are 1 hour different from each other.", 1, "o", "@")





























