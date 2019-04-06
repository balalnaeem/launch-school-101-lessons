=begin

 Write a method that takes two arguments, a string and a positive integer, and prints the string as many times as the integer indicates.

In: string, positive integer
Out: print string as many times as the integer

AL:
  - def the method
    - some sort of loop
      - that prints the string
      - breaks when repetition equals the integer
  -end

=end

def print_string(str, num)
  num.times { puts str }
end

print_string('abc', 4)





