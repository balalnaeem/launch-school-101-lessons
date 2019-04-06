=begin

Write a method that takes two arguments, a positive integer and a boolean, and calculates the bonus for a given salary. If the boolean is true, the bonus should be half of the salary. If the boolean is false, the bonus should be 0.

In: a positive integer(salary) and a boolean
Out: Amount of bonus

Rules:
  - if boolean is true, bonus would be half of the salary
  - if boolean is false, bonus would zero

Al:
  - def a method(integer, boolean)
    - Use of if else condition here
    - if boolean == true
        integer / 2
      else
        zero
      end
=end

def calculate_bonus(salary, bonus)
  bonus ? (salary/2) : 0
end

puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000