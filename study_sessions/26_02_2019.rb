# Create a method that takes a string and replaces every letter with the letter following it in the alphabet ("c" becomes "d", "z" becomes "a", "b" becomes "c", etc). Then capitalize every vowel (a, e, i, o, u) and return the new modified string.

# "y" is not considered a vowel. Don't worry about input validation or the empty string  as input. You also won't get a string containing 'z' or 'Z'. You only have to handle the test cases provided.

=begin

In: String
Out: String

Rules:
-replace every letter in the string with the next letter
-upcase every vowel

Al:
- def a method that a string as an argument
- convert the string into an array for iteration
- iterate over the array replacing each letter with the next one
- then change all the vowels to uppercase

=end

LETTERS = ('a'..'z').to_a

def mangle(str)
  new_str = str.chars.map { |e| LETTERS.include?(e.downcase) ? e.next : e  }.join
  new_str.gsub(/[aeiou]/, 'a' => 'A', 'e' => 'E', 'i' => 'I', 'o' => 'O', 'u' => 'U' )
end

def mangle(phrase)
  next_letters = phrase.chars.map do |char|
    char.match?(/[a-z]/i) ? char.next : char
  end
  next_letters.map do |char|
    char.match?(/[aeiou]/i) ? char.upcase : char
  end.join
end






p mangle("Fun times!") == "GvO Ujnft!"
p mangle("The quick brown fox.") == "UIf rvjdl cspxO gpy."
p mangle("Omega") == "Pnfhb"








