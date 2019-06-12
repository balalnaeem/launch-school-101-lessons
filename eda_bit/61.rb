=begin
Create a function that takes a string of words and returns the highest scoring word. Each letter of a word scores points according to it's position in the alphabet: a = 1, b = 2, c = 3, etc.

cab = 3 + 1 + 2

Rules:
- if there is a tie, return the word that appears first in the string.
- out put word should only contain a-z
- preserve the case in the returned string, return the correct given word

In: string ( of words )
Out: string (one word)

Al:
-def a method that takes a string as an argument
  -replace every non alphabet in the string with "" and set it equal to a new string
  -split the string into an array of words
  -map over that array calculating score for every word
  -iterate over the score array with index, and if the score is highest return that word from the words array
***
how am I going to calculate the score?
  create an array of numbers from 1 to 26
  create an array of alphabets from a to z
  join interweave those arrays and convert them into a score_hash
***
=end

def word_rank(str)
  letters_points = ('a'..'z').to_a.zip((1..26).to_a).to_h
  new_str = str.gsub(/[^A-Za-z" "]/, "")
  word_scores = new_str.split.map do |word|
    current_score = 0
    word.chars.each do |chr|
      current_score += letters_points[chr.downcase]
    end
    current_score
  end
  word_scores.each_with_index do |score, idx|
    return new_str.split[idx] if score == word_scores.max
  end
end

p word_rank("The quick brown fox.") == "brown"
p word_rank("Nancy is very pretty.") == "pretty"
p word_rank("Check back tomorrow, man!") == "tomorrow"
p word_rank("Wednesday is hump day.") == "Wednesday"