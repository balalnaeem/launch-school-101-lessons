=begin
Create a function that takes two integers as arguments (num1, num2) and returns true if a number repeats three times in a row at any place in num1 AND that same number repeats two times in a row in num2.

In: two integers
Out: boolean

Rules:
- if an integer repeates itself in a row three times in the first number, and the same integer repeats itself two times in a row in the second number, return true. Otherwise, return false.
- what if there is no integer that repeates itself 3 times in the first number?
  return false - as shown in the fourth test case

Al:

def a method that takes two arguments, num1 and num2
  create a variable three times repeating numbers and set it equal to empty array
  create a variable two times repeating numbers and set it equal to empty array
  - convert the first number to string, split the string into chars, iterate over the chars with index
      - on each iteration, check if the next two elements are the same
      - if they are, insert that into three times repeating array
  - convert the second number to string, split the string into chars, iterate over the chars with index
      - on each iteration check if they next element is the same
      - if it is, insert that char into two times repeating array
  - iterate over the two times repeating array, and see if any char is included in the three times repeating chars

=end

def trouble(num1, num2)
  thrice, twice = [], []
  num1.to_s.chars.each_with_index do |chr, idx|
    thrice << chr if chr == num1.to_s[idx+1] && chr == num1.to_s[idx+2]
  end
  num2.to_s.chars.each_with_index do |chr, idx|
    twice << chr if chr == num2.to_s[idx+1]
  end
  twice.any? { |chr| thrice.include?(chr) }
end



p trouble(451999277,41177722899) == true
p trouble(444, 44) == true
p trouble(1222345, 12345) == false
p trouble(12345, 12345) == false
p trouble(888, 888) == true
p trouble(666789, 12345667) == true
p trouble(10560002, 100) == true
p trouble(1, 1) == false
p trouble(9111922229333339, 9559669779) == false


