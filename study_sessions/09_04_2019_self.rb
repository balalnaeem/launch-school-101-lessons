=begin

find the recursive sum of the digits of a number till you get the answer that is 1 digit number


=end

def recursive_sum(int)
  return int if int < 10
  recursive_sum(int.digits.sum)
end

p recursive_sum(746) == 8
p recursive_sum(1234) == 1
p recursive_sum(222222) == 3
p recursive_sum(90876) == 3