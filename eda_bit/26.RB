=begin
Create a function that, given a string with at least three characters, returns a list of its:

Length.
First character.
Last character.
Middle character, if the string has an odd number of characters. Middle TWO characters, if the string has an even number of characters.
Index of the second occurrence of the second character in the format "@ index #" and "not found" if the second character doesn't occur again.

In: string
Out: list(array)

Al:

middle character
  - when odd length = str[str.size / 2]
  - when even = str[str.size/2, 2]

- index of the second occurence of the second char
a local variable, set it equal to 0,
a local variable, set it equal to the second char from the array below
split the string into chars, iterate over the array
  if whenever the char is equal to second char, increment the counter
    if counter is equal to 2, get the index of that particular char save it in a variable
    break out of loop
return the final array

=end

  def all_about_strings(str)
    s = str.size
    m =  s.even? ? str[s / 2 - 1..s / 2 ] : str[s / 2]
    i = str.index(str[1], 2)
    i = i.nil? ? 'not found' : "@ index #{i}"
    [s, str[0], str[-1], m, i]
  end

p all_about_strings("LASA") #== [4, "L", "A", "AS", "@ index 3"]
p all_about_strings('break')


# def all_about_strings(str)
#   middle = str.size.odd? ? str[str.size / 2] : str[str.size/2 - 1, 2]
#   counter = 0
#   second = str.chars[1]
#   str.chars.each_with_index do |char, idx|
#     counter += 1 if char == second
#     if counter == 2
#       counter = idx
#       break
#     end
#   end
#   if counter == 1
#     last_element = 'not found'
#   else
#     last_element = "@ index #{counter}"
#   end
#   [str.size, str.chars.first, str.chars.last, middle, last_element]
# end

p all_about_strings("LASA") #== [4, "L", "A", "AS", "@ index 3"]
p all_about_strings('break')




















