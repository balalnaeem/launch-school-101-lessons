=begin
Write a method that computes the difference between the square of the sum of the first n positive integers and the sum of the squares of the first n positive integers.

In: Integer
Out: Integer

Rules:
- square of the sum of first n number - sum of the squares of first n numbers

Al:
- calculate of the sum of fist n numbers and then square that
- calulate the squares of first n numbers and then add them up

=end

def sum_square_difference(num)
  (1..num).sum ** 2 - (1..num).map { |n| n**2 }.sum
end

p sum_square_difference(3) == 22
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150