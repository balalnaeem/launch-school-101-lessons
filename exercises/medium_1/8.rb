# def fibonacci n
#   n < 2 ? n : fibonacci(n-2) + fibonacci(n-1)
# end



def fibonacci n
  first = 0
  second = 1
  n.times do
    third = first + second
    first = second
    second = third
  end
  first
end

p fibonacci 2
p fibonacci 3
p fibonacci 5
