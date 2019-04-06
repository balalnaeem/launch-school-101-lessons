=begin

Write a method that takes a String as an argument, and returns a new String that contains the original value using a staggered capitalization scheme in which every other character is capitalized, and the remaining characters are lowercase.

Characters that are not letters should not be changed, but count as characters when switching between upper and lowercase.

In: string
Out: string

Al:
  -def a method that takes string as an argument
    initialize a variable counter = 0
    string.downcase.chars.map
      see if char is a letter
         if it is, upcase it if counter is even
      if char is not a letter
        just return letter
      end if condition
      increase the counter by 1 before the end of the iteration
    end of iteration.join the characters together
  end of method

=end

def staggered_case (string, first_char = 'upper')
  counter = 0
  counter += 1 if first_char == 'lower'
  string.downcase.chars.map do |char|
    counter += 1
    counter.odd? ? char.upcase : char
  end.join
end

puts staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
puts staggered_case('ALL_CAPS') == 'AlL_CaPs'
puts staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'




















