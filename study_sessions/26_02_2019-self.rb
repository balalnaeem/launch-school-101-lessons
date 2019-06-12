# Have the method letter_changes(str) take the str parameter being passed and
# modify it using the following algorithm. Replace every letter in the string
# with the 3rd letter following it in the alphabet (ie. c becomes f, Z becomes C).
# Then return this modified string.

# lowercase_letters = ('a'..'z').to_a
# uppercase_letters = ('A'..'Z').to_a
# LOWER_HASH = lowercase_letters.zip(lowercase_letters.rotate(3)).to_h
# UPPER_HASH = uppercase_letters.zip(uppercase_letters.rotate(3)).to_h

def letter_changes(str)
  str.chars.map do |char|
    if LOWER_HASH.include?(char)
      LOWER_HASH[char]
    elsif UPPER_HASH.include?(char)
      UPPER_HASH[char]
    else
      char
    end
  end.join
end

def letter_changes(str)
  letters = ('a'..'z').to_a
  rotated_hash = letters.zip(letters.rotate(3)).to_h
  str.chars.map do |e|
    if e =~ /[a-z]/i
      e == e.upcase ? rotated_hash[e.downcase].upcase : rotated_hash[e]
    else
      e
    end
  end.join
end

def letter_changes str
  letters = ('a'..'z').to_a
  rotated_hash = letters.zip(letters.rotate(3)).to_h
  str.chars.map do |e|
    if e =~ /[a-z]/i
      e == e.upcase ? rotated_hash[e.downcase].upcase : rotated_hash[e]
    else
      e
    end
  end.join
end


p letter_changes("this long cake@&") == "wklv orqj fdnh@&"
p letter_changes("Road trip9") == "Urdg wuls9"
p letter_changes("EMAILZ@gmail.com") == "HPDLOC@jpdlo.frp"