# def fibonacci_last(n)
#   fib_nums = []
#   (1..n).each.with_index do |num, idx|
#     if idx <= 1
#       fib_nums << 1
#     else
#       fib_nums << fib_nums[-1] + fib_nums[-2]
#     end
#   end
#   fib_nums.last.digits.first
# end

def fibonacci_last n
  first = 0
  second = 1
  n.times do
    third = first + second
    first = second
    second = third
  end
  first.digits.first
end

p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
p fibonacci_last(123456789)