# Given 2 strings, your job is to find out if there is a substring
# that appears in both strings. You will return true if you find a
# substring that appears in both strings, or false if you do not.
# We only care about substrings that are longer than one letter long.


# def get_substrings(arr)
#   sub_arrays = []
#   index = 0
#   sub_arr_ele = arr.size
#   loop do
#     elements = 1
#     loop do
#       sub_arrays << arr.slice(index, elements)
#       elements += 1
#       break if elements > sub_arr_ele
#     end
#     index += 1
#     sub_arr_ele -= 1
#     break if index >= arr.size
#   end
#   sub_arrays.map { |sub_array| sub_array.join }.delete_if { |e| e.size == 1 }
# end

# def substring_test (str1, str2)
#   substrings_1 = get_substrings(str1.chars)
#   substrings_2 = get_substrings(str2.chars)

#   substrings_1.each do |sub_str1|
#     substrings_2.each do |sub_str2|
#       return true if sub_str1 == sub_str2
#     end
#   end
#   false
# end


#-----------------------------------------------------------
require 'pry'

def substrings(str)
  result = []
  0.upto(str.size - 2) do |start_idx|
    (start_idx + 1).upto(str.size - 1) do |end_idx|
      binding.pry
      result << str[start_idx..end_idx]
    end
  end
  result
end

def substring_test(str1, str2)
  str1_substrings = substrings(str1.downcase) # an array of all the substrings

  str1_substrings.each do |substring|
    return true if str2.downcase.include?(substring)
  end
  false
end

p substrings('something')

# p substring_test('Something', 'Fun') == false
# p substring_test('Something', 'Home') == true
# p substring_test('Something', 'Fun') == false
# p substring_test('Something', '') == false
# p substring_test('', 'Something') == false
# p substring_test('BANANA', 'banana') == true
# p substring_test('test', 'lllt') == false
# p substring_test('', '') == false
# p substring_test('1234567', '541265') == true
# p substring_test('supercalifragilisticexpialidocious', 'SoundOfItIsAtrociou') == true