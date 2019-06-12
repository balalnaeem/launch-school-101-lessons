=begin

Create a function that accepts a string and returns true if it's in the format of a proper phone number and false if it's not. Assume any number between 0-9 (in the appropriate spots) will produce a valid phone number. This is what a valid phone number looks like: (123) 456-7890

in: string
out: boolean

Al:
- well well well, I can now thinking of creating a hash and looping through hash and seeing if each char is the right one.

=end
DIGITS = %w(1 2 3 4 5 6 7 8 9 0)
VALIDITY = {
  0 => '(',
  1 => DIGITS,
  2 => DIGITS,
  3 => DIGITS,
  4 => ')',
  5 => ' ',
  6 => DIGITS,
  7 => DIGITS,
  8 => DIGITS,
  9 => '-',
  10 => DIGITS,
  11 => DIGITS,
  12 => DIGITS,
  13 => DIGITS
}

def is_valid_phone_number(phone_num)
  phone_num.chars.each_with_index do |ele, idx|
    return false unless VALIDITY[idx].include?(ele)
  end
  true
end

p is_valid_phone_number("(123) 456-7890")
p is_valid_phone_number("1111)555 2345")
p is_valid_phone_number("098) 123 4567")
