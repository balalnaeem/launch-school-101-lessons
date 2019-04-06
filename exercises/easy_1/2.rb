=begin

Write a method that takes one integer argument, which may be positive, negative, or zero. This method returns true if the number's absolute value is odd. You may assume that the argument is a valid integer value.

Rules: Not allowed to use odd? or even? method.

In: an integer
Out: boolean


Al:
  - def method
      check if num % == 0
         return false
      else
        return true
      end
    end

=end

def is_odd?(num)
  !(num.remainder(2) == 0)
end

puts is_odd?(11)