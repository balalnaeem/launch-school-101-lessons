=begin
**** Smooth Sentence ****

Rules:
- last letter of each word is == first letter of the next word

In: String
Out: boolean

Al:
- split the string into an array of words
- iterate over the array, with index
    - check if each word's last char is equal to the next word's first char
=end


def is_smooth(str)
  beginning_letters = str.downcase.split.map { |word| word[0] }
  ending_letters = str.downcase.split.map { |word| word[-1] }
  ending_letters.pop
  beginning_letters.shift
  beginning_letters == ending_letters
end

p is_smooth("Marta appreciated deep perpendicular right trapezoids")
p is_smooth("Someone is outside the doorway")
p is_smooth("Mad dislikes sharp pointy yoyos")
p is_smooth("Rita asks Sam mean numbered dilemmas")