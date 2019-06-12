=begin
Create a function that counts the number of adverbs in a sentence. An adverb is a word that ends with ly.

In: string of words
Out: Integer

Rules:
- a word that ends with 'ly'
- do not count the ly ni the middle or at the start of the word

Al:
- intialize a variable count set it equal to zero
- split the string or words into an array of words
- iterate over the array
    - on each iteration, break the words into chars
    - check if the last two characters are 'ly'
    - if they are increment the count variable with 1
- return the count variable
=end

def count_adverbs(str)
  count = 0
  str = str.delete('.,')
  str.split.each do |word|
    count += 1 if word.chars.slice(-2, 2).join == "ly"
  end
  count
end

p count_adverbs("She ran hurriedly towards the stadium.")
p count_adverbs("She ate the lasagna heartily and noisily.")
p count_adverbs("He hates potatoes.")
p count_adverbs("He was happily, crazily, foolishly over the moon.")
p count_adverbs("She writes poetry beautifully.")
p count_adverbs("There are many fat geese in the park.")
p count_adverbs("The horse acted aggressively and stubbornly.")
p count_adverbs("She forgot where to buy the lysol.")
p count_adverbs("Ilya ran to the store.")