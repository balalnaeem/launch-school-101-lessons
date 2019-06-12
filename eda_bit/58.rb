=begin
write a method that will denerate random english math problems. The method should take a length, then return a math phrase with that many operations.

problem: we are given an integer, based on that integer we need to produce a phrase that uses one of the ops.(and two number words).

Rules:
-phrase will always start and end with a number word
-every ops word will have a number word infront of it and behind it.

In: integer
Out: string

Al:

some sort of loop structure
take a sample out of number words
take a sample out of ops words
end the loop
take a sample number words

=end

NUMBERS = %w(zero one two three four five six seven eight nine)
OPS = ["plus", "minus", "times", "divided by"]

def mathphrase(int)
  result_phrase = []
  int.times do
    result_phrase << NUMBERS.sample
    result_phrase << OPS.sample
  end
  result_phrase << NUMBERS.sample
  result_phrase.join(" ")
end


p mathphrase(1) # => "five minus two"
p mathphrase(2) # => "eight plus four times nine"
p mathphrase(3) # => "nine plus two times four divided by seven"