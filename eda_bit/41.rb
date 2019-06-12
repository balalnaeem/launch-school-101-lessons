=begin
Create a function that takes a single string as argument and returns an ordered array containing the indexes of all capital letters in the string.

In: string
Out: array

Rules:
- Return an empty array if no uppercase letters are found in the string.
- Special characters ($#@%) and numbers will be included in some test cases.

Al:
- initialize a local variable and set it equal to an ampty array
- split the string into chars
    iterate over the chars
      on each iteration, check if the letter is capital and it's not a special char
      if it is insert the index of that particular letter into the new empty array
- return the new empty array
=end

def index_of_caps(str)
  indices = []
  str.chars.each_with_index do |char, i|
    if char =~ /[a-z]/i && char.upcase == char
      indices << i
    else
      next
    end
  end
  indices
end

p index_of_caps("eDaBiT")
