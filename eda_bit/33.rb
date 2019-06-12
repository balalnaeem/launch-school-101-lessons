=begin

Create a function that takes a string (the string to truncate) and a number (the maximum length of the truncated string) as arguments and returns the truncated string at the given length.

Rules:
- To "truncate" means "to shorten by cutting off the top or end".
- If a word is trucated in the middle, discard it in the output (see 2nd example above).
- number given is the length, not index of the resulting string

Al:
- split the string into an array of words
- with str[] method truncate the string at given length, and join them
- now split the truncated string into an array
- compare the truncated array with the original array, and if last word does not match the word at the same index in the original array, discard that.
=end

def truncate(str, length)
  truncated_str = str[0...length]
  truncated_str.split.select.with_index do |word, idx|
    word == str.split[idx]
  end.join(" ")
end


# p truncate("Lorem ipsum dolor sit amet.", 11) == "Lorem ipsum"
p truncate("Lorem ipsum dolor sit amet.", 16) #== "Lorem ipsum"
# p truncate("Lorem ipsum dolor sit amet.", 17) == "Lorem ipsum dolor"