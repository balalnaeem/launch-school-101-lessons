=begin
Create a function that takes a number as an argument and returns a string formatted to separate thousands.

Rules: - commas start from the end, inserted after every three digits, no commas at the very end or very start.

In: integer
Out: string

Al:
- first of all convert the integers into string digits array
- initialize a variable = empty string
- now take the str digits one by one and shove them into the empty string, every shoving 3 str digits, insert a comma, some sort of looping construct
- in the end check if the you have the desired result
=end

def format_num(int)
  str_digits = int.digits.map(&:to_s)
  formatted_string = ''
  counter = 0
  str_digits.each do |str_digit|
    formatted_string << ',' if counter % 3 == 0 && counter > 0
    formatted_string << str_digit
    counter += 1
  end
  formatted_string.reverse
end

p format_num(100000)