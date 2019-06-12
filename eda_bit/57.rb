=begin
-we are given a string and we have to calculate the mathematical value of that string.

Approach: iterate over the given words. replace the english words with their math equivalent. And then process the operation in left to right order.(may be in can do the right order of precedence)

In: string
Out: integer

Al:
- create a hash that has all the words from 0-9 integers and four ops words as well
-convert the string into an array.
-delte the 'by' element from the array. it serves no purpose
- map over the array, substiuting every word for it's equivalent maths value
- join and use eval to calculate
=end

def calculate(str)
  word_replacement = {
    zero:   0,
    one:    1,
    two:    2,
    three:  3,
    four:   4,
    five:   5,
    six:    6,
    seven:  7,
    eight:  8,
    nine:   9,
    plus:   '+',
    minus:  '-',
    divided:'/',
    times:  '*',
    by:     ''
  }

  replaced_str = str.downcase.split.map do  |word|
    word_replacement[word.to_sym]
  end.join
  eval(replaced_str)
end

p calculate("One plus seven minus two times eight divided by four") == 4
p calculate("Two times eight plus two") == 18
p calculate("Three times five divided by five") == 3







