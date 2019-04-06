=begin

Write a method that calculates and returns the index of the first Fibonacci number that has the number of digits specified as an argument. (The first Fibonacci number has index 1.)

In: an integer
Out: an integer

Rule: first fibbonacci number has index of 1. Not 0. (so basically I will use the length of the array of fibbonacci numbers as soon as it hits the desired digit)

Al:
  -def a method that takes an argument
    -initialize an empty array
    -start some sort of loop
      -start calculating fibbonacci numbers and pushing them into the empty array
      -after pushing each number into the array check if it's the desired number
      -if it is then break the loop and return the length of the array
  end

=end

def create_fibonacci(arr)
  if arr.empty? || arr.size == 1
    arr << 1
  else
    arr << (arr[-1] + arr[-2])
  end
end

def find_fibonacci_index_by_length(num)
  fibonacci_numbers = []
  loop do
    create_fibonacci(fibonacci_numbers)
    break if fibonacci_numbers.last / 10**(num - 1) >= 1
  end
  fibonacci_numbers.length
end

puts find_fibonacci_index_by_length(2) == 7
puts find_fibonacci_index_by_length(3) == 12
puts find_fibonacci_index_by_length(10) == 45
puts find_fibonacci_index_by_length(100) == 476
puts find_fibonacci_index_by_length(1000) == 4782
puts find_fibonacci_index_by_length(10000) == 47847
