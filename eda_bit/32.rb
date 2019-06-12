=begin
Rules:
Replace every letter with the letter following it in the alphabet.
Capitalize every vowel. (aeiou)
Ignore the non-alphabet letters

In: String
Out: String

Al:
- split the string into array of chars
- map over the array, and replace every letter, with the next letter in alphabet
- map over the resulting array, upcase every vowel
=end

def mangle(str)
  new_letters = str.chars.map { |char| char =~ /[a-z]/i ? char.next : char }
  new_letters.map { |char| char =~ /[aeiou]/ ? char.upcase : char }.join
end

p mangle("Fun times!")
