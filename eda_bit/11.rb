# Create a method that takes a string and replaces every letter with the letter following it in the alphabet ("c" becomes "d", "z" becomes "a", "b" becomes "c", etc). Then capitalize every vowel (a, e, i, o, u) and return the new modified string.

# "y" is not considered a vowel. Don't worry about input validation or the empty string  as input. You also won't get a string containing 'z' or 'Z'. You only have to handle the test cases provided.

def next_letter(str)
  a = ('a'..'z').to_a
  hash = a.zip(a.rotate(1)).to_h
  str.chars.map { |e| hash.keys.include?(e) ? hash[e] : e }.join
end

p next_letter("somthing!!")