=begin
ATM machines allow 4 or 6 digit PIN codes and PIN codes cannot contain anything but exactly 4 digits or exactly 6 digits. Your task is to create a function that takes a string and returns true if the PIN is valid and false if it's not.

Rules:
4 or 6 digits pin codes only
Some test cases contain special characters.
Empty strings must return false.

In: String
Out: boolean

Al:
- return false if the length of the string is not 4 or 6
- split the string into chars array
- iterate over the chars, chekcing if each char is an integer
- return true at the end
=end

def is_valid_PIN(str)
   valid = true
   valid = false unless str.size == 4 || str.size == 6
   str.chars.each do |char|
     if char =~ /[0-9]/
      next
    else
      return false
    end
   end
   valid
end

p is_valid_PIN("1234")
