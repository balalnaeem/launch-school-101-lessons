=begin
**** Is the Number a Prime? ****

In: Integer
Out: boolean

Rules:
- 1 is not a prime number

Al:
- create a range starting from 2 uptil the given integer (exclusive)
- if any number in the range can evenly divide the given integer, integer is not prime
=end

def is_prime(int)
  return false if int == 1
  (2...int).each { |num| return false if int.modulo(num).zero? }
  true
end

p is_prime(7) == true
p is_prime(9) == false
p is_prime(10) == false