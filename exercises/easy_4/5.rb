=begin

Write a method that searches for all multiples of 3 or 5 that lie between 1 and some other number, and then computes the sum of those multiples. For instance, if the supplied number is 20, the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

In: an Integer
Out: Sum of all the mulitples of 3 and 5 between 1 and the provided number

Rules: provided number is bigger than zero

Al:
  -def a method that takes a num as an argument
    -create a range between 1 and that given number
    -iterate over the range, checking if the current number is a multiple of 3 or 5
    -if it is a multiple store than in a separate new array
    -then call sum on that array.
    -return the value
=end

def multisum(num)
  (1..num).select { |e| ((e % 3).zero? || (e % 5).zero?) }.sum
end

puts multisum(20) == 98
puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168