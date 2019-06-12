=begin
Create a function that takes a string of words (or just one word) and converts each word from camelCase to snake_case.

Rules:
- we are given words, that are in camel case
- we need to convert them snake case
- "" will return ""
- it should work for multiple words as well
    ("a lightWeight foodFightGoat") == "a light_weight food_fight_goat")
- numbers are to be considered lowercase letters
    ("r2d2C3po") == "r2d2_c3po")
- words with no capitals should remain unchanged
- single letters should return one lower case letter ("B") == "b"

In: string (camel)
Out: string (snake)

Al:
-guard clause : if str size is less than equal to 1, return str,downcase
-initialize a variable snake and set it equal to an empty string
-split the given string into chars
    - iterate over the chars
      - if char matches alphabet, and is upcased,
         insert '_' into snake and insert char lowercased
         else
          insert char into snake
return snake
=end

def camel_to_snake(str)
  return str.downcase if str.size <= 1
  str.chars.map.with_index do |chr, idx|
    chr =~ /[A-Z]/ && idx > 0 ? "_#{chr.downcase}" : chr.downcase
  end.join
end

p camel_to_snake("BogFrog33e") #== "bog_frog33e"