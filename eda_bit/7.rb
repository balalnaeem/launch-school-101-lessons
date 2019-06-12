=begin
Create a function that takes a string as an argument. The function must return a string containing 1s and 0s based on the string argument's words. If any word of the argument is equal to 'zero' or 'one' (case insensitive) you should consider it. The returned string's length should be a multiple of 8, if the string is not a multiple of 8 you should remove the numbers in excess.

In: string
Out: string

rules:
-the output string should contain 1's and 0's based on the words of input string
-case insensitivity
-only zero's and one's should be considered
-ouput strings length should be multiples of 8 and minimum 8
-if the length is more than a muliple of 8, elements in excess should be removed

Al:
- downcase the string (downcase)
- convert the string into an array (split)
- delete the elements that are not one's and zero's (select)
- transorm the string into digits based on words (map)
- check the length of the resulting array and remove any elements in excess (modulo)
=end

def text_to_number_binary(str)
  final_array = str.downcase.split.select { |word| ['one', 'zero'].include?(word) }
  final_array.pop until final_array.size.modulo(8).zero?
  final_array.map { |word| word == 'zero' ? '0' : '1' }.join
end

p text_to_number_binary('one one one one zero zero zero zero') == "11110000"
p text_to_number_binary('one Zero zero one zero zero one one one one one zero oNe one one zero one zerO') == "1001001111101110"
p text_to_number_binary('one zero one') == ""
p text_to_number_binary('one zero zero one zero ten one one one one two') == "10010111"
p text_to_number_binary('One zero zero one zero one one one zero one one zero zero zero zero one zero one one one zero one one zero zero zero zero one zero one one one zero one one zero zero zero zero one zero one one one zero one one zero zero zero zero one zero one one one zero one one zero zero zero zero one zero') == "1001011101100001011101100001011101100001011101100001011101100001"
p text_to_number_binary('TWO one zero one one zero one zero') == ""
p text_to_number_binary('TWO one zero one one zero one zero one') == "10110101"