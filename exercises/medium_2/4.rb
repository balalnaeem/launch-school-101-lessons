=begin
Write a method that takes a string as an argument, and returns true if all parentheses in the string are properly balanced, false otherwise. To be properly balanced, parentheses must occur in matching '(' and ')' pairs.

In: String
Out: Boolean

Rules:
- all parentheses should be properly balanced
- 'properly balanced' means
    1) number of '(' should be equal to number of ')'
    2) for every pair '(' should come before ')'
- if there are no parentheses in the string, return true

Al:
- def a method that takes a string as an argument
- if there are no parentheses in the string, return true
- split the string into characters
- select the parentheses into an array
- iterate over the array counting the number of '(' and ')'. if at any time number of closing brackets is higher than the opening brackets, return false
- in the end check if they are equal with ==

=end

def balanced?(str)
  parens_arr = str.chars.select { |e| e == '(' || e == ')' }
  opening_count, closing_count = 0, 0
  parens_arr.each do |char|
    if char == '('
      opening_count += 1
    else
      closing_count += 1
    end
    return false if closing_count > opening_count
  end
  opening_count == closing_count
end

def balanced?(str)
  return false if (str.count("'").odd? || str.count("\"").odd?)
  opening_chars = ["(", "{", "["]
  closing_chars = [")", "}", "]"]
  special_arr = str.chars.select { |e| opening_chars.include?(e) || closing_chars.include?(e) }
  opening_count, closing_count = 0, 0
  special_arr.each do |char|
    if opening_chars.include?(char)
      opening_count += 1
    else
      closing_count += 1
    end
    return false if closing_count > opening_count
  end
  opening_count == closing_count
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?("What's \" (((is))) up()") == false


# beautiful solution

# def balanced?(string)
#   parens = 0
#   string.each_char do |char|
#     parens += 1 if char == '('
#     parens -= 1 if char == ')'
#     break if parens < 0
#   end

#   parens.zero?
# end