# Have the method letter_changes(str) take the str parameter being passed and
# modify it using the following algorithm. Replace every letter in the string
# with the 3rd letter following it in the alphabet (ie. c becomes f, Z becomes C).
# Then return this modified string.


# In : string
# Out : string
# Rules:
# - replace every letter in the string with the 3rd letter following it in the alphabet. i.e. a becomes d, y becomes b.

#Al:
# -inialize a constant and set it equal to an array of all alphabetic chars, lowercase, and uppercase, rotate these array 3 points
# -convert the string into an array each char (chars)
# -iterate over the chars array, and replace each char with the 3rd following, if char is from alphabets, if not then next
#







LOWER_CASE_LETTERS = ('a'..'z').to_a
UPPER_CASE_LETTERS = ('A'..'Z').to_a

def letter_changes(str)
  chars_arr = str.chars
  chars_arr.map do  |e|
    if LOWER_CASE_LETTERS.include?(e)
      idx = (LOWER_CASE_LETTERS.index(e) + 3) % 26
      LOWER_CASE_LETTERS[idx]
    elsif UPPER_CASE_LETTERS.include?(e)
      idx = (UPPER_CASE_LETTERS.index(e) + 3) % 26
      UPPER_CASE_LETTERS[idx]
    else
      e
    end
  end.join
end

#------------------------------------------------------

def letter_changes(str)
  alphabet = ('a'..'z').to_a

  str.chars.map do |char|
    upcase = true if upcase?(char)

    if char.match?(/[a-zA-Z]/)
      index = (alphabet.index(char.downcase) + 3) % 26
      upcase ? alphabet[index].upcase : alphabet[index]
    else
      char
    end
  end.join
end

def upcase?(char)
  char == char.upcase
end

p letter_changes("this long cake@&") == "wklv orqj fdnh@&"
p letter_changes("Road trip9") == "Urdg wuls9"
p letter_changes("EMAILZ@gmail.com") == "HPDLOC@jpdlo.frp"


=begin

find the recursive sum of the digits of a number till you get the answer that is 1 digit number

recursive_sum(746) == 8
recursive_sum(1234) == 1
recursive_sum(222222) == 3
recurisve_sum(90876) == 3














