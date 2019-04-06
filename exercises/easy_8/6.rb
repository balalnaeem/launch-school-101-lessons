=begin
Write a method that takes two arguments: the first is the starting number, and the second is the ending number. Print out all numbers between the two numbers, except if a number is divisible by 3, print "Fizz", if a number is divisible by 5, print "Buzz", and finally if a number is divisible by 3 and 5, print "FizzBuzz".

In: two numbers
Out: strings

=end

def fizzbuzz(num1, num2)
  result = (num1..num2).to_a.map do |num|
    if num.modulo(3).zero? && num.modulo(5).zero?
      'FizzBuzz'
    elsif num.modulo(3).zero?
      'Fizz'
    elsif num.modulo(5).zero?
      'Buzz'
    else
      num
    end
  end
  result.join(", ")
end

p fizzbuzz(1, 15)