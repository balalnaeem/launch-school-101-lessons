=begin
Your job is to write a function which increments a string, to create a new string. If the string already ends with a number, the number should be incremented by 1. If the string does not end with a number the number 1 should be appended to the new string.

In: String
Out: String

Rules:
- if the input string does not end with a number, 1 should be appended to the string
- if the input string end with a number, the number should be incremented by 1 in the output string
- If the number has leading zeros the amount of digits should be considered.

Al:
-def a method that takes a string as an argument
-return the string with '1' appended to it, if string does not end with a number
-separate the number from the string, except leading zeros
  -conver the string into chars array
  -
-convert the separated number to integer, and increment by 1, convert it back to string, and append to the string it was taken off from
=end

def increment_string(str)
  return str << '1' if str[-1] =~ /[a-z]/i
  arr_letters = str.chars.select { |e| e =~ /[a-z]/i }
  str_digits = str.chars.reject { |e| e =~ /[a-z]/i }
  incremented_num = (str_digits.join.to_i + 1).to_s.chars
  if incremented_num.size < str_digits.size
    incremented_num.unshift('0') until incremented_num.size == str_digits.size
  end
  (arr_letters + incremented_num).join
end

p increment_string("foo") == "foo1"
p increment_string("foobar001") == "foobar002"
p increment_string("foobar1") == "foobar2"
p increment_string("foobar00") == "foobar01"
p increment_string("foobar99") == "foobar100"
p increment_string("") == "1"















