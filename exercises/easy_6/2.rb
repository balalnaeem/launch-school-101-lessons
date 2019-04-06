=begin

Write a method that takes an array of strings, and returns an array of the same string values, except with the vowels (a, e, i, o, u) removed.

In: array (of strings)
Out: array (of same strings)

Al:
  -def a method that takes an array of strings
    -Iterate over the array - e = string
      -delete the vowels from the string and return back the string without it
  end

=end

VOWELS = 'AEIOUaeiou'

def remove_vowels(arr)
  arr.map { |str| str.delete(VOWELS) }
end

puts remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
puts remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
puts remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
